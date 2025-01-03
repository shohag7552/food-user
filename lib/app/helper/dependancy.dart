
import 'package:food_user_app/app/controllers/parcel_controller.dart';
import 'package:food_user_app/app/db_client/db_client.dart';
import 'package:food_user_app/app/reposotories/parcel_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => DbClient());
  Get.lazyPut(() => ParcelRepository(dbClient: Get.find()));

  Get.lazyPut(() => ParcelController(parcelRepository: Get.find()));
}