import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:n_task/all_screen/sub_screen/favorite_screen.dart';

import '../common_widget/text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.blue,
          icon: Icon(Icons.favorite),
          onPressed: () {
            Get.to(FouvritesScreen());
          },
        ),
        actions: [
          IconButton(
              onPressed: () {}, color: Colors.grey, icon: Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/icons/Avatar.png'),
                  ),
                  CommonText.text(
                      text: "Natalia Lebediva",
                      fontSize: 24.00,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ),
            SizedBox(
              height: 15.00,
            ),
            Expanded(
              flex: 1,
              child: PMCard(
                  title: 'Practices',
                  icon: 'assets/icons/icon-practices.png',
                  sessions: '13',
                  time: '4:23:04'),
            ),
            SizedBox(
              height: 15.00,
            ),
            Expanded(
              flex: 1,
              child: PMCard(
                  title: 'Meditations',
                  icon: 'assets/icons/icon-meditations.png',
                  sessions: '6',
                  time: '0:55:04'),
            ),
            SizedBox(
              height: 15.00,
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(12),
                width: 327,
                height: 220,
                decoration: BoxDecoration(
                    color: Color(0xfff4f5f6),
                    borderRadius: BorderRadius.circular(22)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Stats",
                            // style: GoogleFonts.roboto(
                            //     fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              CommonText.text(
                                  text: "Last Week",
                                  fontSize: 12.00,
                                  fontWeight: FontWeight.w500),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Color(0xff2d31ac),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CommonText.text(
                                        text: "Practices",
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w500)
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Color(0xfffb9b9c),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CommonText.text(
                                        text: "Meditations",
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w500)
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined, size: 16),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CommonText.text(
                                        text: "0:43:05",
                                        color: Color(0xff000000),
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w500)
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined, size: 16),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CommonText.text(
                                        text: "Practices",
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff000000).withOpacity(0.7))
                                  ],
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 8,
                            ),
                          ]),
                      Column(
                        children: [
                          Row(
                            children: [Spacer()],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ChartView(
                                  hTop: 0,
                                  hBottom: 29,
                                  lable: "Mon",
                                ),
                                ChartView(
                                  hTop: 0,
                                  hBottom: 54,
                                  lable: "Tue",
                                ),
                                ChartView(
                                  hTop: 21,
                                  hBottom: 21,
                                  lable: "Wen",
                                ),
                                ChartView(
                                  hTop: 10,
                                  hBottom: 13,
                                  lable: "Thu",
                                ),
                                ChartView(
                                  hTop: 0,
                                  hBottom: 34,
                                  lable: "Fri",
                                ),
                                ChartView(
                                  hTop: 19,
                                  hBottom: 29,
                                  lable: "Sat",
                                ),
                                ChartView(
                                  hTop: 21,
                                  hBottom: 16,
                                  lable: "Sun",
                                ),
                              ]),
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PMCard extends StatelessWidget {
  const PMCard(
      {Key? key,
      required this.title,
      required this.icon,
      required this.sessions,
      required this.time})
      : super(key: key);

  final String title;
  final String icon;
  final String sessions;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Color(0xfff4f5f6), borderRadius: BorderRadius.circular(22)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              height: 29,
              width: 29,
            ),
            SizedBox(
              width: 10,
            ),
            CommonText.text(
                text: title, fontSize: 24.00, fontWeight: FontWeight.w400)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText.text(
                text: "Sessions", fontSize: 16.00, fontWeight: FontWeight.w300),
            CommonText.text(
                text: sessions, fontSize: 28.00, fontWeight: FontWeight.w400),
            CommonText.text(
                text: "Time", fontSize: 16.00, fontWeight: FontWeight.w300),
            CommonText.text(
                text: time, fontSize: 28.00, fontWeight: FontWeight.w400),
          ],
        )
      ]),
    );
  }
}

class ChartView extends StatelessWidget {
  const ChartView(
      {Key? key,
      required this.hTop,
      required this.hBottom,
      required this.lable})
      : super(key: key);

  final double hTop;
  final double hBottom;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              height: hTop,
              width: 6,
              color: Color(0xfffb9b9c),
            ),
            Container(
              height: hBottom,
              width: 6,
              color: Color(0xff2d31ac),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        CommonText.text(
          text: lable,
          fontWeight: FontWeight.w500,
          fontSize: 12.00,
          color: Colors.black.withOpacity(0.7),
        )
      ],
    );
  }
}
