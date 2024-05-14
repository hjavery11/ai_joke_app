import 'package:ai_joke/bindings/app_binding.dart';
import 'package:ai_joke/views/history_view.dart';
import 'package:ai_joke/views/homepage_view.dart';
import 'package:ai_joke/views/more_view.dart';
import 'package:ai_joke/views/subject_page_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/prompt_view.dart';

class Routes {
  static const home = '/';
  static const subject = '/subject';
  static const audio = '/audio';
  static const history = '/history';
  static const more = '/more';
  static const prompt = '/prompt';



  static final List<GetPage> pages = [
    GetPage(
     name: home,
      page: () => HomePageView(),
      binding: AppBinding(),
    ),
  GetPage(
   name: subject,
   page: () => const SubjectPageView(),
  ),
  GetPage(
    name: history,
    page: () => const HistoryView(),
  ),
  GetPage(
   name: more,
   page: () => const MoreView()
  ),
  GetPage(
  name: prompt,
  page: () => PromptView(),
  ),
  ];
}