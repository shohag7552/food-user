import 'package:food_user_app/app/common/models/category_model.dart';
import 'package:food_user_app/app/reposotories/parcel_repo.dart';
import 'package:get/get.dart';

class ParcelController extends GetxController implements GetxService {
  final ParcelRepository parcelRepository;
  ParcelController({required this.parcelRepository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;


  List<CategoryModel>? _categoryList;
  List<CategoryModel>? get categoryList => _categoryList;

  Future<void> getCategories() async {
    _isLoading = true;
    update();

    _categoryList = await parcelRepository.getCategories();

    _isLoading = false;
    update();
  }


}