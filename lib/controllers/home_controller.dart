import 'package:ai_joke/views/home_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/history_view.dart';
import '../views/more_view.dart';

class HomeController extends GetxController{

  RxInt currentIndex = 0.obs;

  void setIndex(index) {
        currentIndex.value=index;
    }

  Widget getCurrentTab() {
    switch (currentIndex.value){
      case 0:
        return const HomePageView();
      case 1:
        return const HistoryView();
      case 2:
        return const MoreView();
      default:
        return const HomePageView();
    }
  }

  String getCurrentTitle() {
    switch(currentIndex.value) {
      case 0:
        return 'Home';
      case 1:
        return 'History';
      case 2:
        return 'More';
      default:
        return 'Home';
    }
  }
}