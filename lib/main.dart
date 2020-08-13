import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundnum){
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Widget buildKey({int soundnum, Color color}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(soundnum);
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
              buildKey(soundnum:1,color: Colors.blue),
              buildKey(soundnum:2, color: Colors.red),
              buildKey(soundnum:3, color: Colors.yellow),
              buildKey(soundnum:4, color: Colors.green),
              buildKey(soundnum:5, color: Colors.orange),
              buildKey(soundnum:6, color: Colors.purple),
              buildKey(soundnum:7, color: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
