import 'package:ai_joke/bindings/app_binding.dart';
import 'package:ai_joke/views/app_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'data/database_helper.dart';
import 'views/subject_page_view.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



void main() async {
  await dotenv.load(fileName: 'assets/app.env');

  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  DatabaseHelper databaseHelper = DatabaseHelper();
  await Get.putAsync<DatabaseHelper>(() async {
    bool deleteDB = false;
    if (deleteDB) {
      await databaseHelper.deleteExistingDatabase();
      print("Database deleted");
    }
    await databaseHelper.database;
    return databaseHelper;
  }, permanent: true);
}