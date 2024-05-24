import 'package:get/get.dart';

import 'home_controller.dart';

class BottomNavBarController extends GetxController{
  RxInt currentTab = 0.obs;
  RxString currentTitle = "Home Page".obs;

  void setIndex(index){

    currentTab.value = index;

    switch (index){
      case 0:
        currentTitle.value='Home Page';
        break;
      case 1:
        currentTitle.value='History';
        break;
      case 2:
        currentTitle.value='More';
        break;
    }

    if (index ==0){
      // When the home tab is selected, reset the home page to the initial page (if desired)
      Get.find<HomeController>().setIndex(0);
    }
  }


}