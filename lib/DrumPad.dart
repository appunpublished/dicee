import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drumpad extends StatefulWidget {
  @override
  _DrumpadState createState() => _DrumpadState();
}

class _DrumpadState extends State<Drumpad> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drum Pad'),
        ),
        body: Wrap(
          spacing: 5.0,
          runSpacing: 10.0,
          direction: Axis.vertical,
          children: <Widget>[
            widgetbuilder(Colors.red, 'Snare'),
            widgetbuilder(Colors.blue, 'Rimshot'),
            widgetbuilder(Colors.green, 'Mid Tom'),
            widgetbuilder(Colors.yellow, 'Low Tom'),
            widgetbuilder(Colors.purple, 'Kick'),
            widgetbuilder(Colors.orange, 'Hihat O'),
            widgetbuilder(Colors.tealAccent, 'Hihat C'),
            widgetbuilder(Colors.blueGrey, 'High Tom'),
            widgetbuilder(Colors.brown, 'Crash'),
            widgetbuilder(Colors.pinkAccent, 'Clap'),
          ],
        ),
      ),
    );
  }

  void PlaySound(String note) {
    final player = AudioCache();
    player.play('$note.wav');
  }

  Widget widgetbuilder(Color color, String note) {
    return Container(
      width: 135,
      height: 170,
      child: FlatButton(
        color: color,
        onPressed: () => PlaySound('$note'),
        child: Text(
          '$note',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }
}
