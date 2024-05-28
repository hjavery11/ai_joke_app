import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sqflite/sqflite.dart';

import '../models/joke.dart';

class JokeRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference jokesCollection = FirebaseFirestore.instance.collection('jokes');

  JokeRepository() {
    // Initialization if needed
  }

  Future<void> insertJoke(Joke joke) async {
    try {
      await jokesCollection.add(joke.toMap());
    } catch (e) {
      print("Failed to add joke: $e");
    }
  }

  Future<List<Joke>> fetchJokes() async {
    try {
      QuerySnapshot querySnapshot = await jokesCollection.get();
      return querySnapshot.docs.map((doc) {
        return Joke.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      print("Failed to fetch jokes: $e");
      return [];
    }
  }

  Future<void> deleteJoke(String jokeId) async {
    try {
      await jokesCollection.doc(jokeId).delete();
    } catch (e) {
      print("Failed to delete joke: $e");
    }
  }

  Future<void> updateJoke(String jokeId, Joke joke) async {
    try {
      await jokesCollection.doc(jokeId).update(joke.toMap());
    } catch (e) {
      print("Failed to update joke: $e");
    }
  }
}