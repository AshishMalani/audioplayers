import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_task/screens/bottom_bar_screen.dart';

import 'model/getxs_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BaseBindings(),
      title: 'Flutter Demo',
      home: BottomBar(),
    );
  }
}

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomController(), fenix: true);
    // TODO: implement dependencies
  }
}
