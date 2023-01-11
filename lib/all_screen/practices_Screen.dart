import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_task/common_widget/size_box.dart';
import 'package:n_task/common_widget/text.dart';

import 'sub_screen/music_screen.dart';

class PracticesScreen extends StatefulWidget {
  const PracticesScreen({Key? key}) : super(key: key);

  @override
  State<PracticesScreen> createState() => _PracticesScreenState();
}

class _PracticesScreenState extends State<PracticesScreen> {
  List images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU"
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
  ];
  bool fav = false;
  changeFav() {
    setState(() {
      fav = !fav;
    });
  }

  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: CommonText.text(text: "Practices", color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/images/sec_1.png",
                    height: Get.height * 0.25,
                  ),
                );
              }),
            ),
          ),
          CommonSizeBox.sizeBox(height: Get.height * 0.01),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "All Practices",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(MusicScreen());
                        },
                        child: Container(
                          padding: EdgeInsets.zero,
                          height: Get.height * 0.1,
                          width: Get.width,
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                Container(
                                  height: Get.height * .09,
                                  width: Get.width * 0.28,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              images[index].toString())),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                CommonSizeBox.sizeBox(width: Get.width * 0.05),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText.text(text: "Title"),
                                      CommonSizeBox.sizeBox(
                                          height: Get.height * 0.008),
                                      CommonText.text(
                                          text: "Sub Title",
                                          color: Colors.grey),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      changeFav();
                                    },
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 10.0,
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
