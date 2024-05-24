import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initializeDatabase();
    return _database!;
  }

  Future<Database> _initializeDatabase() async {
    final String databasePath = join(
        await getDatabasesPath(), 'joke_database.db');
    return await openDatabase(
      databasePath,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE jokes(id INTEGER PRIMARY KEY AUTOINCREMENT, topic TEXT, type TEXT, response TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> deleteExistingDatabase() async {
    final String databasePath = join(await getDatabasesPath(), 'joke_database.db');
    await deleteDatabase(databasePath);
  }
}