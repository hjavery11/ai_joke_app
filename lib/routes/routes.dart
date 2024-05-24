import 'package:ai_joke/bindings/app_binding.dart';
import 'package:ai_joke/bindings/subject_binding.dart';
import 'package:ai_joke/views/history_view.dart';
import 'package:ai_joke/views/home_view.dart';
import 'package:ai_joke/views/more_view.dart';
import 'package:ai_joke/views/subject_page_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/home_binding.dart';
import '../views/audio_view.dart';
import '../views/prompt_view.dart';

class Routes {
  static const home = '/';
  static const subject = '/subject';
  static const audio = '/audio';
  static const prompt = '/prompt';



  static final List<GetPage> pages = [
    GetPage(
     name: home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  GetPage(
   name: subject,
   page: () => const SubjectPageView(),
    binding: SubjectBinding(),
  ),
  GetPage(
  name: prompt,
  page: () => PromptView(),
  ),
    GetPage(
  name: audio,
  page: () => AudioView(),
    )
  ];
}