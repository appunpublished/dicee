import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MyDice extends StatefulWidget {
  @override
  _MyDiceState createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int roll1 = 1, roll2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$roll1.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$roll2.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(
            padding: EdgeInsets.all(30.0),
            child: Text('Roll'),
            onPressed: () {
              PlaySound();
              setState(() {
                roll1 = Random().nextInt(6) + 1;
                roll2 = Random().nextInt(6) + 1;
              });
            },
          )
        ],
      )),
    );
  }

  void PlaySound() {
    final player = AudioCache();
    player.play('./animals/rolling.wav');
  }
}
