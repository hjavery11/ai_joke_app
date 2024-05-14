import 'package:ai_joke/views/bottom_navbar_view.dart';
import 'package:ai_joke/views/history_view.dart';
import 'package:ai_joke/views/home_menu_view.dart';
import 'package:ai_joke/views/prompt_view.dart';
import 'package:ai_joke/views/subject_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/appbar_controller.dart';
import '../controllers/bottom_nav_controller.dart';
import '../controllers/home_controller.dart';
import '../routes/routes.dart';
import 'appbar_view.dart';
import 'audio_view.dart';
import 'more_view.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});




  @override
  Widget build(BuildContext context) {
    final BottomNavBarController bottomNavController = Get.put(BottomNavBarController());
    final HomeController homeController = Get.put(HomeController());

    return Obx(
      () => Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarView(),
        body: IndexedStack(
          index: bottomNavController.currentTab.value,
          children: [
            Obx(() => IndexedStack(
              index: homeController.currentIndex.value,
              children: [
                HomeMenuView(),
                SubjectPageView(),
                PromptView(),
                AudioView(),
                HistoryView(),
                MoreView(),
              ],
            )),
            HistoryView(),
            MoreView(),
          ],
        ),
        bottomNavigationBar: BottomNavBarView(),
      )
    );
}
}



