import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:n_task/common_widget/colors.dart';
import 'package:n_task/screens/2_screen.dart';
import 'package:n_task/screens/3_screen.dart';
import 'package:n_task/screens/4_screen.dart';

import '../model/getxs_view_model.dart';
import '1_screen.dart';

List<Widget> tabPage = [
  OneScreen(),
  SecoundScreen(),
  ThreeScreen(),
  ForthScreen()
];
List<Map<String, String>> bottomBarData = [
  {
    "Icon": "assets/svg/Icons home.svg",
  },
  {
    "Icon": "assets/svg/Icons lessons.svg",
  },
  {
    "Icon": "assets/svg/Icons meditation.svg",
  },
  {
    "Icon": "assets/svg/Icons profile.svg",
  },
];

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  BottomController _bottomBar = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomController>(
      builder: (controller) {
        return Scaffold(
            bottomNavigationBar:
                bottomNavigationBar(bottomController: _bottomBar),
            backgroundColor: Colors.white,
            body: _bottomBar.selectedScreen != ''
                ? _bottomBar.bottomIndex == 0
                    ? OneScreen()
                    : _bottomBar.bottomIndex == 1
                        ? SecoundScreen()
                        : _bottomBar.bottomIndex == 2
                            ? ThreeScreen()
                            : _bottomBar.bottomIndex == 3
                                ? ForthScreen()
                                : OneScreen()
                : tabPage[_bottomBar.bottomIndex]);
      },
    );
  }

  Widget bottomNavigationBar({required BottomController bottomController}) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, top: 4),
      // height: Platform.isIOS ? 100.sp : 50.sp,
      width: Get.width,
      decoration: BoxDecoration(
          color: bottomController.selectedScreen == 'BottomBar'
              ? ColorPicker.searchBarColor
              : Colors.transparent,
          border: Border(
              top: BorderSide(
            //                   <--- left side
            color: bottomController.selectedScreen == 'BottomBar'
                ? ColorPicker.dividerColor
                : ColorPicker.whiteColor.withOpacity(0.2),
            //  width: 3.0,
          ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomBarData
            .map((e) => InkResponse(
                  onTap: () {
                    onTabTapped(bottomBarData.indexOf(e));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          child: SvgPicture.asset(
                            e["Icon"]!,
                            height: 50,
                            width: 16,
                            color: bottomController.bottomIndex ==
                                    bottomBarData.indexOf(e)
                                ? Colors.blue
                                : Colors.grey,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  void onTabTapped(int index) {
    _bottomBar.bottomIndex = index;
    print('========--- ${_bottomBar.bottomIndex}');
    if (index == 0) {
      _bottomBar.setIndex(0);
    }
    if (index == 1) {
      _bottomBar.setIndex(1);
    }

    if (index == 2) {
      _bottomBar.setIndex(2);
    }
    if (index == 3) {
      _bottomBar.setIndex(3);
    }
  }
}
