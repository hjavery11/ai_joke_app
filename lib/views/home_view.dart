import 'package:ai_joke/views/bottom_navbar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/appbar_controller.dart';
import '../controllers/home_controller.dart';
import 'appbar_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarView(),
      body: Obx(() => controller.getCurrentTab()),
      bottomNavigationBar: BottomNavBarView(),
    );
  }
}


