import 'package:ai_joke/controllers/appbar_controller.dart';
import 'package:ai_joke/controllers/home_controller.dart';
import 'package:ai_joke/controllers/subject_view_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controllers/more_controller.dart';
import '../services/joke_service.dart';

class AppBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<JokeService>(() => JokeService());
    Get.lazyPut<SubjectController>(() => SubjectController(Get.find<JokeService>()));
    Get.lazyPut<AppBarController>(() => AppBarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MoreController>(() => MoreController());
  }

}