// import 'package:flutter/cupertino.dart';
//
// class SecoundScreen extends StatefulWidget {
//   const SecoundScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SecoundScreen> createState() => _SecoundScreenState();
// }
//
// class _SecoundScreenState extends State<SecoundScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       child: Text("2[Two]"),
//     ));
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../all_screen/practices_Screen.dart';
import '../model/getxs_view_model.dart';

BottomController _bottomBar = Get.find();

Widget SecoundScreen() {
  print("SecoundScreen${_bottomBar.selectedScreen.length}");

  switch (_bottomBar.selectedScreen) {
    case 'SecoundScreen':
      return PracticesScreen();

    default:
      return PracticesScreen();
  }
}
