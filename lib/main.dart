import 'package:dicee/AnimalSound.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

import 'Dicee.dart';
import 'DrumPad.dart';
import 'Xylophone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('test');
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => MyDice()),
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Xylophone(),
      floatingActionButton: FabCircularMenu(
          alignment: Alignment.bottomLeft,
          fabColor: Colors.tealAccent,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.music_note),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Drumpad()),
                  );
                }),
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => AnimalSound()),
                  );
                  // Quizler();
                })
          ]),
    );
  }
}
