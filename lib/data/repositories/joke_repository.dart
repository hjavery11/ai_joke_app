import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sqflite/sqflite.dart';

import '../database_helper.dart';
import '../models/joke.dart';

class JokeRepository {
  final DatabaseHelper _databaseHelper = Get.find<DatabaseHelper>();

  JokeRepository() {
    // Ensure DatabaseHelper is ready
    _initialize();
  }

  Future<void> _initialize() async {
    await _databaseHelper.database;  // Wait for the database to be ready if necessary
  }

  Future<void> insertJoke(Joke joke) async {
    final Database db = await _databaseHelper.database;

    await db.insert(
        'jokes',
        joke.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  Future<List<Joke>> fetchJokes() async {
    final Database db = await _databaseHelper.database;

    final List<Map<String,Object?>> jokes = await db.query('jokes');

    return List.generate(jokes.length, (i) {
      return Joke.fromMap(jokes[i]);
    });

  }

}