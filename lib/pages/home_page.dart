import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home-page";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: Column(children: [Text("Home page")])),
    );
  }
}
