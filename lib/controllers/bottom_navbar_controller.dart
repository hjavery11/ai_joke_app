import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  RxInt selectedTab = 0.obs;

  void changeTab(index) {
    selectedTab.value = index ;
  }

}