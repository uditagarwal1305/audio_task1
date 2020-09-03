import 'video.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

videoPlayeronline() {
  return (MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              " Online Video",
              style: TextStyle(
                height: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/videoplayback.mp4',
            ),
            looping: false,
          ),
        ],
      ),
    );
  }
}
