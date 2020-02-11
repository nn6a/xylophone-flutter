import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget buildKey({Color color, String fileName}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play(fileName);
        },
        color: color,
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
              buildKey(
                color: Colors.red,
                fileName: 'note1.wav',
              ),
              buildKey(
                color: Colors.orange,
                fileName: 'note2.wav',
              ),
              buildKey(
                color: Colors.yellow,
                fileName: 'note3.wav',
              ),
              buildKey(
                color: Colors.green,
                fileName: 'note4.wav',
              ),
              buildKey(
                color: Colors.teal,
                fileName: 'note5.wav',
              ),
              buildKey(
                color: Colors.blue,
                fileName: 'note6.wav',
              ),
              buildKey(
                color: Colors.purple,
                fileName: 'note7.wav',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
