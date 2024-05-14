import 'package:get/get.dart';

import 'home_controller.dart';

class BottomNavBarController extends GetxController{
  RxInt currentTab = 0.obs;

  void setIndex(index){
    currentTab.value = index;

    if (index ==0){
      // When the home tab is selected, reset the home page to the initial page (if desired)
      Get.find<HomeController>().setIndex(0);
    }
  }


}