import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../../common_widget/size_box.dart';
import '../../common_widget/text.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen>
    with SingleTickerProviderStateMixin {
  final player = AudioPlayer(); // Create a player
  Duration? duration;

  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  Future<void> initPlayer() async {
    await player.setUrl(
        'https://pagalfree.com/download/128-Note Fenko - Yo Yo Honey Singh 128 Kbps.mp3',
        initialPosition: Duration(seconds: 0),
        preload: true);
    duration = player.duration;
  }

  bool fav = false;
  changeFav() {
    setState(() {
      fav = !fav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/music_image.png"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(children: [
              CommonSizeBox.sizeBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonSizeBox.sizeBox(width: Get.width * 0.23),

                  CommonText.text(
                    text: "Mental Training",
                    color: Colors.white,
                    fontSize: 20.00,
                  ),
                  CommonSizeBox.sizeBox(width: Get.width * 0.2),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      "assets/svg/x.png",
                      height: 20.00,
                    ),
                  )
                  // Icon(Icons.)
                ],
              ),
              CommonSizeBox.sizeBox(height: Get.height * 0.01),
              Image.asset(
                "assets/svg/d_Vector.png",
                height: 8.00,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      changeFav();
                    },
                    icon: fav == false
                        ? Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                  ),
                  FutureBuilder(
                    future: initPlayer(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return GestureDetector(
                          onTap: () async {
                            if (_isPlay) {
                              _isPlay = false;
                              _controller.reverse();
                              await player.pause();
                            } else {
                              _isPlay = true;
                              _controller.forward();
                              await player.play();
                            }
                          },
                          child: Container(
                            height: Get.height * 0.07,
                            width: Get.width * 0.15,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: AnimatedIcon(
                                icon: AnimatedIcons.play_pause,
                                progress: _controller,
                                color: Colors.white,
                                size: 30.00,
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  Image.asset(
                    "assets/icons/sliders.png",
                    height: 20.00,
                  ),
                ],
              ),
              CommonSizeBox.sizeBox(height: Get.height * 0.1)
            ]),
          ),
        ),
      ],
    ));
  }
}
