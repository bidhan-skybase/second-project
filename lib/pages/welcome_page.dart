import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/controllers/welcome_controller.dart';
import 'package:second_project/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = "/welcome-page";
  final c = Get.put(WelcomeController());

  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: c.storeName, child: Text("Store")),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(HomePage.routeName);
              },
              child: Text("Navigate"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color containerColor;

  const CustomContainer({required this.containerColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 100, width: 100, color: containerColor);
  }
}
