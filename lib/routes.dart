import 'package:get/get.dart';
import 'package:second_project/controllers/home_controller.dart';
import 'package:second_project/controllers/welcome_controller.dart';
import 'package:second_project/pages/home_page.dart';
import 'package:second_project/pages/welcome_page.dart';


List<GetPage> pages = [
  GetPage(
    name: WelcomePage.routeName,
    page: () => WelcomePage(),
    binding: BindingsBuilder(() {
      Get.lazyPut(() => WelcomeController());
    }),
  ),
  GetPage(
    name: HomePage.routeName,
    page: () => HomePage(),
    binding: BindingsBuilder(() {
      Get.lazyPut(() => HomeController());
    }),
  ),
];
