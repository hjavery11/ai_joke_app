import 'package:ai_joke/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../routes/routes.dart';

class HomeMenuView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column
      (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                  overlayColor: WidgetStateProperty.all<Color>(Colors.grey[800]!),
                  foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return Colors.white.withOpacity(0.56);
                      }
                      return Colors.white;
                    },
                  ),
                ),
                onPressed: () {
                 Get.toNamed('/subject');
                },
                child: const Text('Create by Subject',
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
              backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
              overlayColor: WidgetStateProperty.all<Color>(Colors.grey[800]!),
              foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed))
                    return Colors.white.withOpacity(0.56);
                  return Colors.white;
                },
              ),
            ),
            onPressed: () {
              Get.toNamed('/prompt');
            },
            child: const Text('Create Joke from Prompt',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                letterSpacing: 1,
// color: Colors.white,
              ),)
        ),
        TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
              overlayColor: WidgetStateProperty.all<Color>(Colors.grey[800]!),
              foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed))
                    return Colors.white.withOpacity(0.56);
                  return Colors.white;
                },
              ),
            ),
            onPressed: () {
              Get.toNamed('/audio');
              },
            child: const Text('Generate Audio',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                letterSpacing: 1,
// color: Colors.white,
              ),)
        )

        ,

      ]
      ,
    )
    );
  }

}