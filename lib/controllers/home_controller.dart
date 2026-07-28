import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:second_project/utils/storage_keys.dart';

class HomeController extends GetxController {
  String name = "";
  final box = GetStorage();
  //
  // @override
  // //gets called automatically when the controller is called
  // void onInit() {
  //   var args = Get.arguments;
  //   if (args['name'] != null) {
  //     name = args['name'];
  //   }
  //   super.onInit();
  // }

  void readStorage() {
    String name = box.read(StorageKeys.USERNAME);
    print(name);
  }
}
