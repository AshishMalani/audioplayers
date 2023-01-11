import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_task/common_widget/size_box.dart';
import 'package:n_task/common_widget/text.dart';

class FouvritesScreen extends StatefulWidget {
  const FouvritesScreen({Key? key}) : super(key: key);

  @override
  State<FouvritesScreen> createState() => _FouvritesScreenState();
}

class _FouvritesScreenState extends State<FouvritesScreen> {
  List images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU""https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: CommonText.text(text: "Fouvrite", color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      Container(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText.text(text: "Title"),
                                    CommonSizeBox.sizeBox(
                                        height: Get.height * 0.008),
                                    CommonText.text(
                                        text: "Sub Title", color: Colors.grey),
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
