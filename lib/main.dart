import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'Football', 'score': 8},
        {'text': 'Hocky', 'score': 4},
        {'text': 'Tenis', 'score': 6}
      ],
    },
    {
      'questionText': 'What\'s the name your favourite tourist spot?',
      'answers': [
        {'text': 'Sundarban', 'score': 4},
        {'text': 'Kashmir', 'score': 3},
        {'text': 'Bankok', 'score': 2},
        {'text': 'Maldeebs', 'score': 6}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(),
    ));
  }
}
