import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class PromptView extends GetView<PromptController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Prompt Page'),
    );
  }
  
}

class PromptController {
}