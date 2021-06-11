import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void onPressed() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text('The Question'),
          ElevatedButton(
              onPressed: () => print('Answer 1 chosen'),
              child: Text('Answer 1')),
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
