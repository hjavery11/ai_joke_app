import 'package:ai_joke/data/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class Joke {
  final int? id;
  final String topic;
  final String type;
  final String response;


    const Joke({
    this.id,
    required this.topic,
    required this.type,
    required this.response
  });

  Map<String,Object?> toMap(){
    return {
      'topic': topic,
      'type': type,
      'response': response
    };
  }

  factory Joke.fromMap(Map<String, dynamic> map) {
    return Joke(
      id: map['id'],
      topic: map['topic'],
      type: map['type'],
      response: map['response'],
    );
  }

  @override
  String toString() {
    return 'Joke{id: $id, topic: $topic, type: $type, response: $response }';
  }


}
