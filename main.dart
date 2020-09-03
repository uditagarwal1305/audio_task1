import 'package:flutter/material.dart';
import 'package:task1flutter_app/ui/onlineaudio.dart';
import 'package:task1flutter_app/ui/onlinevideo.dart';
import 'ui/offlinevideo.dart';
import 'ui/offlineaudio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.library_music)),
                Tab(icon: Icon(Icons.offline_bolt)),
                Tab(icon: Icon(Icons.ondemand_video)),
                Tab(icon: Icon(Icons.music_video)),
              ],
            ),
            title: Text('AV PLAYER'),
          ),
          body: TabBarView(
            children: [
              localmusic(),
              videoPlayeroffline(),
              videoPlayeronline(),
              onlinemusic(),
            ],
          ),
        ),
      ),
    );
  }
}
