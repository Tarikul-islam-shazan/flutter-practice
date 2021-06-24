import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext buildContext) {
    var _questions = [
      {
        'questionText': 'What\'s your favourite game?',
        'answers': ['Cricket', 'Football', 'Hocky', 'Tenis'],
      },
      {
        'questionText': 'What\'s the name your favourite tourist spot?',
        'answers': ['Sundarban', 'Kashmir', 'Bankok', 'Maldeebs'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(_questions[_questionIndex]['questionText']),
          ...(_questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
