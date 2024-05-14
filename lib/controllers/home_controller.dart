import 'package:ai_joke/controllers/bottom_nav_controller.dart';
import 'package:ai_joke/views/subject_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';
import '../views/history_view.dart';
import '../views/homepage_view.dart';
import '../views/more_view.dart';


class HomeController extends GetxController{

  RxInt currentIndex = 0.obs;


  void setIndex(index) {
        currentIndex.value=index;
    }


  String getCurrentTitle() {
    int currentTab = Get.find<BottomNavBarController>().currentTab.value;
    if(currentTab>0){
      switch (currentTab) {
        case 1:
          return 'History';
        case 2:
          return 'More';
      }
    }

    switch(currentIndex.value) {
      case 0:
        return 'Home';
      case 1:
        return 'Subject';
      case 2:
        return 'Prompt';
      case 3:
        return 'Audio';
      case 4:
        return 'History';
      case 5:
        return 'More';
      default:
        return 'Default, something didnt work';
    }
  }
  }