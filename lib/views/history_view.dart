import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controllers/history_controller.dart';

class HistoryView extends StatelessWidget {

  final HistoryController controller= HistoryController();

  HistoryView({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('History Tab')
    );
  }
}
