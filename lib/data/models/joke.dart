import 'package:ai_joke/data/database_helper.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class Joke {
  final String topic;
  final String type;
  final String response;
  final int timestamp;

  static final DateFormat dateFormat = DateFormat('MM/dd/yyy, HH:mm a');

    const Joke({
    required this.topic,
    required this.type,
    required this.response,
    required this.timestamp
  });

  Map<String,Object?> toMap(){
    return {
      'topic': topic,
      'type': type,
      'response': response,
      'timestamp': timestamp
    };
  }

  factory Joke.fromMap(Map<String, dynamic> map) {
    return Joke(
      topic: map['topic'],
      type: map['type'],
      response: map['response'],
      timestamp: map['timestamp']
    );
  }

  @override
  String toString() {
    return 'Joke{topic: $topic, type: $type, response: $response, timestamp: $timestamp }';
  }

  String localizeTime() {
    var date = new DateTime.fromMicrosecondsSinceEpoch(timestamp*1000);
    String formattedDate = dateFormat.format(date);

    return formattedDate;
  }


}
