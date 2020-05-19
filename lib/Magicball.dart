import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int image = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything. '),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              image = Random().nextInt(4) + 1;
            });
          },
          child: Expanded(
            child: Image.asset('images/ball$image.png'),
          ),
        ),
      ),
    );
  }
}
