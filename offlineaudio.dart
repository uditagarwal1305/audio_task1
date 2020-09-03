import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

localmusic() {
  AudioPlayer player = new AudioPlayer();
  return Container(
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          "Offline Player",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              color: Colors.purple,
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/1.jpeg"),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.black,
                    onPressed: () async {
                      player = await AudioCache().loop("ek.mp3");
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.black,
                    onPressed: () async {
                      await player.pause();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.black,
                    onPressed: () async {
                      await player.stop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              color: Colors.purple,
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/4.jpg"),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.black,
                    onPressed: () async {
                      player = await AudioCache().loop("Memories.mp3");
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.black,
                    onPressed: () async {
                      await player.pause();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.black,
                    onPressed: () async {
                      await player.stop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
