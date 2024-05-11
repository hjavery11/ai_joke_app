import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
    const HistoryView({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('History Tab')
    );
  }
}
