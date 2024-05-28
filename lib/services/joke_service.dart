import 'dart:async';

import 'package:ai_joke/data/repositories/joke_repository.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/history_controller.dart';
import '../data/models/joke.dart';

class JokeService {
  final String? apiKey = dotenv.env['OPEN_AI_API_KEY'];

  final JokeRepository _jokeRepository;

  JokeService(this._jokeRepository);

  Future<String> getJoke(String topic, String type) async {
    if (type == 'Surprise me') {
      type = 'random';
    }

    OpenAI.apiKey = apiKey!; // Set API key

    OpenAIChatCompletionChoiceMessageModel systemMessage;
    OpenAIChatCompletionChoiceMessageModel userMessage;

    systemMessage = OpenAIChatCompletionChoiceMessageModel(
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(
            "You are a comedian. You are going to be given a joke topic, and a type of joke. Return a funny joke for that topic in the specific style given. Try to make the jokes unique to each joke type, and not repeat jokes across types")      ],
      role: OpenAIChatMessageRole.assistant,
    );

    userMessage = OpenAIChatCompletionChoiceMessageModel(
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(
            "The joke type is $type and the topic is $topic. Only give me the joke, nothing else")
      ],
      role: OpenAIChatMessageRole.user,
    );


    final requestMessages = [systemMessage,userMessage];

    try {
      OpenAIChatCompletionModel jokePrompt = await OpenAI.instance.chat.create(
        model: 'gpt-4o',
        messages: requestMessages,
        temperature: .5,
        maxTokens: 500,
      ).timeout(
        const Duration(seconds: 10), // Specify the timeout duration
        onTimeout: () {
          throw TimeoutException("The request to the server timed out");
        },
      );
      OpenAIChatCompletionChoiceMessageModel data =
          jokePrompt.choices.first.message;
      Map map = data.toMap();
      String finalResponse = map['content'][0]['text'];

      var joke = Joke(
          topic: topic,
          type: type,
          response: finalResponse
      );


      _jokeRepository.insertJoke(joke);

      // Refresh the history view
      HistoryController historyController = Get.find<HistoryController>();
      historyController.fetchJokes();
      return finalResponse;
      // Handle the successful response here
    } on TimeoutException catch (e) {
      // Handle the timeout error
      return "Request timed out: $e";

    } catch (e) {
      // Handle other errors
      return("An error occurred: $e");
    }

  }
}

