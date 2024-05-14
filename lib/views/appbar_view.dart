import 'package:ai_joke/controllers/appbar_controller.dart';
import 'package:ai_joke/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class AppBarView extends GetView<HomeController> implements PreferredSizeWidget{
  const AppBarView({super.key});




  @override
  Widget build(BuildContext context) {
    return Obx(() => AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(controller.getCurrentTitle(),
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
              color: Colors.grey[900]),
    )
    ));
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
