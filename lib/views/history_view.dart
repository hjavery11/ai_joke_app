import 'package:ai_joke/data/repositories/joke_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../controllers/history_controller.dart';

class HistoryView extends StatelessWidget {
    final HistoryController historyController = Get.put(HistoryController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (historyController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (historyController.jokes.isEmpty) {
          return Center(child: Text('No jokes found'));
        } else {
          return SingleChildScrollView(
            child: Column(
              children: historyController.jokes.map((joke) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Topic: ${joke.topic}'),
                            Text('Type : ${joke.type}'),
                            Text('Created: ${joke.localizeTime()}'),
                            SizedBox(height: 4.0),
                            Text('Response :\n${joke.response}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          );
        }
      }),

    );
  }
}
