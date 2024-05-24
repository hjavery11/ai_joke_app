import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'appbar_view.dart';

class AudioView extends GetView<AudioController> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBarView(title: 'Audio View'),
     body: Text("Audio View")
   );
  }
  
}

class AudioController {
}