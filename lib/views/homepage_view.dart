import 'package:ai_joke/views/bottom_navbar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/appbar_controller.dart';
import '../controllers/home_controller.dart';
import 'appbar_view.dart';

class HomePageView extends GetView<HomeController> {
  const HomePageView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarView(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if  (states.contains(MaterialState.pressed))
                            return Colors.white.withOpacity(0.56);
                          return Colors.white;
                        },
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Create by Subject',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    letterSpacing: 1,
                   // color: Colors.white,
                  ),)
              ),
            ],
          ),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if  (states.contains(MaterialState.pressed))
                      return Colors.white.withOpacity(0.56);
                    return Colors.white;
                  },
                ),
              ),
              onPressed: () {},
              child: Text('Create Joke from Prompt',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  letterSpacing: 1,
                  // color: Colors.white,
                ),)
          ),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if  (states.contains(MaterialState.pressed))
                      return Colors.white.withOpacity(0.56);
                    return Colors.white;
                  },
                ),
              ),
              onPressed: () {},
              child: Text('Generate Audio',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  letterSpacing: 1,
                  // color: Colors.white,
                ),)
          ),
        ],
      ),
      // Obx(() => const Text('Home page view')),
      bottomNavigationBar: BottomNavBarView(),
    );
  }
}


