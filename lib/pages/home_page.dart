import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home-page";
  final c = Get.find<HomeController>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Home page"),
            Text("The namme is ${c.name}"),
            ElevatedButton(onPressed: c.readStorage, child: Text("Read dataa")),
          ],
        ),
      ),
    );
  }
}
