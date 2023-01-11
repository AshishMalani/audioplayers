import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:n_task/all_screen/profile_screen.dart';

import '../model/getxs_view_model.dart';

BottomController _bottomBar = Get.find();

Widget ForthScreen() {
  print("Fourth${_bottomBar.selectedScreen.length}");
  switch (_bottomBar.selectedScreen) {
    case 'ForthScreen':
      return ProfileScreen();

    default:
      return ProfileScreen();
  }
}
