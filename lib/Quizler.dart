import 'package:flutter/material.dart';

class Quizler extends StatefulWidget {
  @override
  _QuizlerState createState() => _QuizlerState();
}

class _QuizlerState extends State<Quizler> {
  int _questionNumber = 0;

  List<String> Question = [
    "Sun Rises from West",
    'Earth is oval',
    'A Day has 24 hours',
    'Cow has 6 legs'
  ];

  List<bool> Answer = [false, true, true, false];

  List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quizler'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Text(Question[_questionNumber])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        if (_questionNumber < Question.length - 1) {
                          _questionNumber++;
                          if (Answer[_questionNumber])
                            scoreKeeper.add(Icon(Icons.check));
                          else
                            scoreKeeper.add(Icon(Icons.close));
                        }
                      });
                    },
                    child: Text('True'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        if (_questionNumber < Question.length - 1) {
                          _questionNumber++;

                          if (Answer[_questionNumber])
                            scoreKeeper.add(Icon(Icons.close));
                          else
                            scoreKeeper.add(Icon(Icons.check));
                        }
                      });
                    },
                    child: Text('False'),
                  ),
                ],
              ),
              Row(
                children: scoreKeeper,
              )
            ],
          ),
        ));
  }
}
