import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:second_project/pages/welcome_page.dart';
import 'package:second_project/routes.dart';

void main() async {
  await GetStorage.init();
  runApp(SecondProject());
}

class SecondProject extends StatelessWidget {
  const SecondProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return GetMaterialApp(
          initialRoute: WelcomePage.routeName,
          getPages: pages,
        );
      },
    );
  }
}
