import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() => print(questionIndex);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animal?',
      'What\'s your favorite celeberity?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer chosen 2!')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Answer chosen 3!'))
          ],
        ),
      ),
    );
  }
}
