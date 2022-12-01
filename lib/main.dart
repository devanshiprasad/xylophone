// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundno){
    final player= AudioPlayer();
    player.play(AssetSource('assets_note$soundno.wav'));
  }
  Expanded buildkey({color, soundno}){
    return  Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: color,
          backgroundColor: color,),
        onPressed: (){
          playsound(soundno);

        },
        child: Text('click me'
        ),
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
            children:<Widget> [
              buildkey(color: Colors.red, soundno: 1),
          buildkey(color: Colors.orange, soundno: 2),
          buildkey(color: Colors.yellow, soundno: 3),
          buildkey(color: Colors.green, soundno: 4),
          buildkey(color: Colors.teal,soundno: 5),
          buildkey(color: Colors.blue, soundno: 6),
          buildkey(color: Colors.purple, soundno: 7 ),
            ],
          ),
        ),
      ),
    );
  }
}