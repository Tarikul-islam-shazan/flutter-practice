import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

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
      'What\'s your school name?',
      'What\'s your favourite game?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(_questions[_questionIndex]),
          ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
          ElevatedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Answer 2')),
          ElevatedButton(
              onPressed: () => print('Answer 3 chosen'),
              child: Text('Answer 3'))
        ],
      ),
    ));
  }
}
