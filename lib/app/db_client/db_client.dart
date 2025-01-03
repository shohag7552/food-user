import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class DbClient {
  final FirebaseFirestore _fireStore;

  DbClient({FirebaseFirestore? fireStore}) : _fireStore = fireStore ?? FirebaseFirestore.instance;

  Future<String?> add({
    required String collection,
    required Map<String, dynamic> data,
    XFile? file,
  }) async {
    try {

      int id = await _getAutoIncrementId(collection: collection);

      if(file != null) {
       String url = await _uploadFileAndGetUrl(file);
       data.addAll({'image' : url});
      }
      data.addAll({'id' : id, 'created_at': DateTime.now()});

      final docRef = await _fireStore.collection(collection).add(data);
      await _setCounterId(collection: collection, id: id);

      return docRef.id;
    } catch (err) {
      throw Exception('Error adding a document: $err');
    }
  }

  Future<List<DbRecord>> fetchAll({required String collection}) async {
    try {
      final colRef = _fireStore.collection(collection).orderBy('id');
      final documents = await colRef.get();
      return documents.docs
          .map((doc) => DbRecord(id: doc.id, data: doc.data()))
          .toList();
    } catch (err) {
      throw Exception('Error fetching documents: $err');
    }
  }

  Future<void> getPaginateData({required String collection}) async{
    // Construct query for first 25 cities, ordered by population
    print('===call====');
    final first = _fireStore.collection(collection).orderBy("id").limit(5);

    first.get().then(
          (documentSnapshots) {

            print('==result : ${documentSnapshots.docs
                .map((doc) => DbRecord(id: doc.id, data: doc.data()))
                .toList()}');

            List<DbRecord> db = documentSnapshots.docs
                .map((doc) => DbRecord(id: doc.id, data: doc.data()))
                .toList();
            print('==first : ${db.first.data} <===> last: ${db.last.data}');
        // Get the last visible document
        final lastVisible = documentSnapshots.docs[documentSnapshots.size - 1];

        // Construct a new query starting at this document,
        // get the next 25 cities.
        final next = _fireStore
            .collection(collection)
            .orderBy("id")
            .startAfterDocument(lastVisible).limit(5);

        // Use the query for pagination
        // ...
      },
      onError: (e) => print("Error completing: $e"),
    );

  }

  Future<List<DbRecord>> fetchAllFromBundle<T>({
    required String collection, // bundleId
    required String bundleUrl,
  }) async {
    final response = await http.get(Uri.parse('$bundleUrl/$collection'));
    final buffer = Uint8List.fromList(response.body.codeUnits);
    final task = _fireStore.loadBundle(buffer);

    task.stream.listen((taskStateProgress) {
      if (taskStateProgress.taskState == LoadBundleTaskState.success) {
        print('Bundle loaded successfully');
      }
    });

    await task.stream.last;

    final querySnap = _fireStore.collection(collection).get(
          const GetOptions(source: Source.cache),
        );

    return querySnap.then((querySnap) {
      return querySnap.docs
          .map((doc) => DbRecord(id: doc.id, data: doc.data()))
          .toList();
    });
  }

  Stream<List<DbRecord>> streamAll({required String collection}) {
    final colRef = _fireStore.collection(collection);
    return colRef.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => DbRecord(id: doc.id, data: doc.data()))
          .toList();
    });
  }

  Stream<List<DbRecord>> streamAllBy({
    required String collection,
    required String field,
    required String value,
  }) {
    final colRef = _fireStore.collection(collection);
    final query = colRef.where(field, isEqualTo: value);
    return query.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => DbRecord(id: doc.id, data: doc.data()))
          .toList();
    });
  }

  Future<bool> deleteById({required String collection, required int id}) async {
    try {
      final collectionRef = _fireStore.collection(collection);

      // Delete the collection
      collectionRef.get().then((snapshot) {
        for (DocumentSnapshot data in snapshot.docs) {
          if(data['id'] == id) {
            data.reference.delete();
            return true;
          }
        }
      });

    } catch (err) {
      throw Exception('Error fetching documents: $err');
    }
    return false;
  }

  Future<int> _getAutoIncrementId({required String collection}) async {
    int id = 0;
    try{
      final count = await _fireStore.collection('$collection-counter').doc('counter').get();
      id = count.get('count') + 1;
    } catch(_){
      await _fireStore.collection('$collection-counter').doc('counter').set({'count' : 1});
      id = 1;
    }
    return id;
  }

  Future<void> _setCounterId({required String collection, required int id}) async {
    await _fireStore.collection('$collection-counter').doc('counter').set({'count' : id});
  }

  Future<String> _uploadFileAndGetUrl(XFile pickedFile) async {

    String url = '';
    final fileName = basename(pickedFile.path);
    final destination = 'images/$fileName.jpg';
    try {
      final ref = FirebaseStorage.instance.ref(destination);
      await ref.putData(
        await pickedFile.readAsBytes(),
        SettableMetadata(contentType: 'image/jpeg'),
      ).whenComplete(() async {
        await ref.getDownloadURL().then((value) {
          url = value;
        });
      });
      // var downloadUrl = await (uploadTask).ref.getDownloadURL();
      // url = downloadUrl;
    } catch (e) {
      print('error occured');
    }
    return url;

  }

}

class DbRecord {
  final String id;
  final Map<String, dynamic> data;

  DbRecord({
    required this.id,
    this.data = const {},
  });
}
