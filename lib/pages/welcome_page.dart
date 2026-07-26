import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/controllers/welcome_controller.dart';
import 'package:second_project/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = "/welcome-page";
  // final c = Get.find<WelcomeController>();
  final c = Get.put(WelcomeController());

  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Welcome page"),
            Text(c.name),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(HomePage.routeName);
              },
              child: Text("Press me"),
            ),
          ],
        ),
      ),
    );
  }
}
