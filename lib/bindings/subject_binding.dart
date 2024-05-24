import 'package:ai_joke/controllers/home_controller.dart';
import 'package:ai_joke/controllers/subject_view_controller.dart';
import 'package:ai_joke/services/joke_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SubjectBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SubjectController(Get.find<JokeService>()));
  }

}