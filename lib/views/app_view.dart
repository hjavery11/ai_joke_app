
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/app_binding.dart';
import 'bottom_navbar_view.dart';
import 'home_page_view.dart';
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
            page: () => const HomeView(),
            binding: AppBinding()
        )
      ],
      debugShowCheckedModeBanner: false,
      title: 'Joke Creator',
    );
  }

}

