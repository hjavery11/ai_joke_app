import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navbar_controller.dart';
import 'history_view.dart';
import 'home_view.dart';

class BottomNavBarView extends StatelessWidget {
  final BottomNavBarController controller = Get.put(BottomNavBarController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx( () {
        switch (controller.selectedTab.value) {
          case 0:
            return const Home();
          case 1:
            return HistoryView();
          default:
            return const Home();
        }
      }
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        onTap: controller.changeTab,
        currentIndex: controller.selectedTab.value,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.blueAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert),label: 'More'),
        ],

    )) ,
    );
  }
}


