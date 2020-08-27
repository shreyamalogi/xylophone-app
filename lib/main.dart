import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color c , int soundNote}) {
    return
    Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playSound(soundNote);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             buildKey(c: Colors.red, soundNote:1),
             buildKey(c:Colors.yellow, soundNote:2),
             buildKey(c:Colors.orange, soundNote:3),
             buildKey(c:Colors.blue, soundNote:4),
             buildKey(c:Colors.teal, soundNote:5),
             buildKey(c:Colors.green, soundNote:6),
             buildKey(c:Colors.purple, soundNote:7),

            ],
          ),
        ),
      ),
    );
  }
}
