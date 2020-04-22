import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playsound(no) {
    final player = new AudioCache();
    player.play('note$no.wav');
  }

  Expanded func({Color colors, int soundno}) {
    return Expanded(
      child: GestureDetector(
   
        onTap: () {
          playsound(soundno);
        },
        child: Container(
          color: colors,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                func(colors: Colors.red[700], soundno: 1),
                func(colors: Colors.orange[900], soundno: 2),
                func(colors: Colors.yellow[700], soundno: 3),
                func(colors: Colors.green[900], soundno: 4),
                func(colors: Colors.teal[900], soundno: 5),
                func(colors: Colors.blue[900], soundno: 6),
                func(colors: Colors.deepPurple[900], soundno: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
