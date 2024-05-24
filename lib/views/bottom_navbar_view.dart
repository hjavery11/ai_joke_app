import 'package:ai_joke/controllers/bottom_nav_controller.dart';
import 'package:ai_joke/views/home_menu_view.dart';
import 'package:ai_joke/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'history_view.dart';
import 'more_view.dart';
import 'subject_page_view.dart';

class BottomNavBarView extends GetView<BottomNavBarController> {


  @override
  Widget build(BuildContext context) {
    return Obx(
        () => BottomNavigationBar(
        onTap: controller.setIndex,
        currentIndex: controller.currentTab.value,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.blueAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert),label: 'More'),
        ],
                )
    );
  }
}


