import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_task/common_widget/colors.dart';

import '../common_widget/size_box.dart';
import 'sub_screen/popular_screen.dart';

class LoveScreen extends StatefulWidget {
  const LoveScreen({Key? key}) : super(key: key);

  @override
  State<LoveScreen> createState() => _LoveScreenState();
}

class _LoveScreenState extends State<LoveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/image_00.png",
            width: Get.width,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Poopular",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(PopularScreen());
                  },
                  child: Text(
                    "Sell All",
                    style: TextStyle(color: ColorPicker.textBlue, fontSize: 15),
                  ),
                ),
                CommonSizeBox.sizeBox(height: Get.height * 0.02),
              ],
            ),
          ),
          CommonSizeBox.sizeBox(height: Get.height * 0.01),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/images/card_01.png",
                    height: Get.height * 0.2,
                  ),
                );
              }),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/images/Card02.png",
                    height: Get.height * 0.2,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
