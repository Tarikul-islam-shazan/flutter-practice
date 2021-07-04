import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are fine.';
    } else if (resultScore <= 16) {
      resultText = 'You are ok.';
    } else if (resultScore <= 20) {
      resultText = 'You are little bit boring.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(resultPhase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
      TextButton(
        onPressed: resetHandler,
        child: Text('Restart Quiz'),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.blue)),
      )
    ]));
  }
}
