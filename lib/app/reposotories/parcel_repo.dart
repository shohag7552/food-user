

import 'package:food_user_app/app/common/models/category_model.dart';
import 'package:food_user_app/app/db_client/db_client.dart';
import 'package:food_user_app/app/utils/app_constants.dart';

class ParcelRepository {
  final DbClient dbClient;
  ParcelRepository({required this.dbClient});

  // Future<String?> addCategory(CategoryModel categoryModel, XFile? image) async {
  //   return dbClient.add(collection: AppConstants.parcelCategory, data: categoryModel.toJson(), file: image);
  // }

  Future<List<CategoryModel>?> getCategories() async {
    List<CategoryModel>? categories;
    List<DbRecord> response = await dbClient.fetchAll(collection: AppConstants.parcelCategory);
    categories = [];
    for (var category in response) {
      categories.add(CategoryModel.fromJson(category.data));
    }
    return categories;
  }

  // Future<void> getPaginateData() async{
  //   await dbClient.getPaginateData(collection: AppConstants.parcelCategory);
  //
  // }
  //
  // Future<bool> deleteCategory(int id) async {
  //   return await dbClient.deleteById(collection: AppConstants.parcelCategory, id: id);
  // }
}