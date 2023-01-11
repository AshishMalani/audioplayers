import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_task/common_widget/size_box.dart';
import 'package:n_task/common_widget/text.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_sharp,
                size: 18.0, color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        title: CommonText.text(text: "Popular", color: Colors.black),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: 20,
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
                                  color: Colors.yellow,
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
                            Icon(Icons.favorite_border)
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
      ]),
    );
  }
}
