import 'package:ai_joke/controllers/appbar_controller.dart';
import 'package:ai_joke/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class AppBarView extends GetView<AppBarController> implements PreferredSizeWidget{
  final String title;

  AppBarView({required this.title});



  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
              color: Colors.grey[900]),
    ),
      leading: controller.showNav.value? null: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
