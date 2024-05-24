import 'package:ai_joke/controllers/appbar_controller.dart';
import 'package:ai_joke/controllers/bottom_nav_controller.dart';
import 'package:ai_joke/controllers/home_controller.dart';
import 'package:ai_joke/controllers/subject_view_controller.dart';
import 'package:ai_joke/data/repositories/joke_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controllers/history_controller.dart';
import '../controllers/more_controller.dart';
import '../data/database_helper.dart';
import '../services/joke_service.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    // Synchronous initialization of other dependencies
    Get.put(HomeController(), permanent: true);
    Get.put(JokeRepository(), permanent: true);
    Get.put(JokeService(Get.find<JokeRepository>()), permanent: true);
    Get.put(BottomNavBarController(), permanent: true);
    Get.put(AppBarController(), permanent: true);
  }
}