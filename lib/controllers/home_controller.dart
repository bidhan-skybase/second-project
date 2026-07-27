import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "";

  @override
  //gets called automatically when the controller is called
  void onInit() {
    var args = Get.arguments;
    if (args['name'] != null) {
      name = args['name'];
    }
    super.onInit();
  }
}
