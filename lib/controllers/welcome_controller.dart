import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:second_project/utils/storage_keys.dart';

class WelcomeController extends GetxController {
  TextEditingController name = TextEditingController();
  final box = GetStorage();

  void storeName() {
    box.write(StorageKeys.USERNAME, "ANUP HERO");
  }

  void delete() {
    box.remove(StorageKeys.USERNAME);
  }
}
