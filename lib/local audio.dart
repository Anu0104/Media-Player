import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class assets_audio extends StatelessWidget {
  AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Audio Player")),
            backgroundColor: Colors.pinkAccent,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.qT08SCHlKjIljQTzgX-8HgHaF7?pid=Api&rs=1'),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(children: [
                Container(
                  width: 250,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://wallpapercave.com/wp/8l3J3Iu.jpg')),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    RaisedButton(
                      color: Colors.black,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () async {
                        // ignore: unused_local_variable

                        audioPlayer =
                            await AudioCache().loop("MainTumhara.mp3");
                        print("hi");
                      },
                    ),
                    RaisedButton(
                      color: Colors.black,
                      child: Icon(
                        Icons.pause,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () async {
                        audioPlayer.pause();
                        print("hiiii");
                      },
                    ),
                    RaisedButton(
                      color: Colors.black,
                      child: Icon(
                        Icons.stop,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () async {
                        audioPlayer.stop();
                        print("I am Anushka ");
                      },
                    ),
                  ],
                ),
                Container(
                  width: 250,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://wallpapercave.com/wp/8l3J3Iu.jpg')),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    RaisedButton(
                      color: Colors.black,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () async {
                        audioPlayer = await AudioCache().loop("countonme.mp3");
                        print("hi");
                      },
                    ),
                    RaisedButton(
                      color: Colors.black,
                      child: Icon(
                        Icons.pause,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () async {
                        audioPlayer.pause();
                        print("hiiii");
                      },
                    ),
                    RaisedButton(
                      color: Colors.black,
                      child: Icon(
                        Icons.stop,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () async {
                        audioPlayer.stop();
                        print("I am Anushka ");
                      },
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
