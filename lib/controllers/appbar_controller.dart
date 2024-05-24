import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/history_view.dart';
import '../views/subject_page_view.dart';

class AppBarController extends GetxController{
  RxInt currentTab = 0.obs;
  RxBool showNav = true.obs;

  void setTab(index){
    currentTab.value = index;
    if(index==0){
      showNav.value=false;
    }else{
      showNav.value= true;
    }
  }



  }
