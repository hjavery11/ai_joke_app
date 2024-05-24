import 'package:ai_joke/data/repositories/joke_repository.dart';
import 'package:get/get.dart';

import '../data/models/joke.dart';

class HistoryController extends GetxController{
  final JokeRepository jokeRepository = Get.find<JokeRepository>();
  var jokes = <Joke>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchJokes();
  }

  void fetchJokes() async {
    isLoading(true);
    try{
      var fetchedJokes = await jokeRepository.fetchJokes();
      jokes.assignAll(fetchedJokes);
    } finally {
      isLoading(false);
    }
  }

}