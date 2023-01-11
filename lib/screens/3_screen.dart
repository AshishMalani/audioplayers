import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:n_task/all_screen/third_screen.dart';

import '../model/getxs_view_model.dart';

BottomController _bottomBar = Get.find();

Widget ThreeScreen() {
  print("ThreeScreen${_bottomBar.selectedScreen.length}");
  switch (_bottomBar.selectedScreen) {
    case 'ThreeScreen':
      return ThirdScreen();

    default:
      return ThirdScreen();
  }
}
