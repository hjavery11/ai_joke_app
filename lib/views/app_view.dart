import 'package:ai_joke/controllers/bottom_navbar_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/home_binding.dart';
import 'bottom_navbar_view.dart';
import 'home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => BottomNavBarView(),
            binding: HomeBinding()
        )
      ],
      debugShowCheckedModeBanner: false,
      title: 'Joke Creator',
    );
  }

}

