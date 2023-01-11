import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../all_screen/love_screen.dart';
import '../model/getxs_view_model.dart';

BottomController _bottomBar = Get.find();

Widget OneScreen() {
  print("OneScreen${_bottomBar.selectedScreen}");

  switch (_bottomBar.selectedScreen) {
    case 'UserHomeWidget':
      return LoveScreen();

    default:
      return LoveScreen();
  }
}
