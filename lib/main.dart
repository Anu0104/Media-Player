import 'package:Audio_App/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Audio_App/local%20audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
      routes: {
        '/audio': (context) => assets_audio(),
        '/video': (context) => VedioApp(),
      },
    );
  }
}

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Media Player')),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              image: DecorationImage(
                image: NetworkImage('https://wallpapercave.com/wp/KwS4poN.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/audio');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.music_note),
                            Text(
                              'Audio',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 15,

                                color: Colors.black,

                                // Text styles here
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/video');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.video_library),
                                  Text(
                                    'video',
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15,

                                      color: Colors.black,

                                      // Text styles here
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
                ])));
  }
}
