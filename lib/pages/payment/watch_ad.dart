import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://shop.highlandscoffee.com.vn/products/combo-2-goi-ca-phe-rang-xay-truyen-thong-highlands-coffee-200g-goi');

class Watch_Ad extends StatefulWidget {
  const Watch_Ad({super.key});
  @override
  _Watch_AdState createState() => _Watch_AdState();
}

class _Watch_AdState extends State<Watch_Ad> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset('assets/video/highland.mp4');
    controller.addListener(() {
      if (mounted) setState(() {});
    });
    controller.initialize().then((value) {
      if (mounted) setState(() {});
    });
    controller.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Xem Quảng Cáo"),
      //   backgroundColor: Colors.redAccent,
      // ),
      body: Container(
          child: Column(children: [
        AspectRatio(
          aspectRatio: 0.64,
          child: VideoPlayer(controller),
        ),
        Container(
            child: VideoProgressIndicator(controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  backgroundColor: Colors.redAccent,
                  playedColor: Colors.green,
                  bufferedColor: Colors.purple,
                ))),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }
                    setState(() {});
                  },
                  icon: Icon(controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    controller.seekTo(Duration(seconds: 0));
                    setState(() {});
                  },
                  icon: Icon(Icons.stop))
            ],
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: _launchUrl,
            child: Text('Mua Ngay'),
          ),
        ),
      ])),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
