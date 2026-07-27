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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(controller: c.name),
            ),

            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  HomePage.routeName,
                  arguments: {
                    //key:value
                    "name": c.name.text,
                  },
                );
              },
              child: Text("Press me"),
            ),
          ],
        ),
      ),
    );
  }
}
