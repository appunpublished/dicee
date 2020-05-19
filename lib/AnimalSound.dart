import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimalSound extends StatefulWidget {
  @override
  _AnimalSoundState createState() => _AnimalSoundState();
}

class _AnimalSoundState extends State<AnimalSound> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animal Sound'),
        ),
        body: Wrap(
          spacing: 5.0,
          runSpacing: 10.0,
          direction: Axis.vertical,
          children: <Widget>[
            widgetbuilder(Colors.red, 'bear'),
            widgetbuilder(Colors.blue, 'cat'),
            widgetbuilder(Colors.green, 'dog'),
            widgetbuilder(Colors.yellow, 'horse'),
            widgetbuilder(Colors.purple, 'monkey'),
            widgetbuilder(Colors.orange, 'peacock'),
            widgetbuilder(Colors.tealAccent, 'rolling'),
            widgetbuilder(Colors.blueGrey, 'rooster'),
            widgetbuilder(Colors.brown, 'tiger'),
            //widgetbuilder(Colors.pinkAccent, 'Clap'),
          ],
        ),
      ),
    );
  }

  void PlaySound(String note) {
    StopSound();
    audioCache.play('./animals/$note.wav');
  }

  void StopSound() {
    //AudioPlayer audioPlayer = new AudioPlayer();
    advancedPlayer.stop();
  }

  Widget widgetbuilder(Color color, String note) {
    return Container(
      width: 135,
      height: 170,
      child: FlatButton(
        color: color,
        onPressed: () => PlaySound('$note'),
        onLongPress: () => StopSound(),
        child: Image.asset(
          './images/animals/$note.jpg',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
