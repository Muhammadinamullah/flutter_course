import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 20) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 15) {
      resultText = 'You are Owesome';
    } else if (resultScore <= 10) {
      resultText = 'You\'re Strange!';
    } else {
      resultText = 'Yor\'re so Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
              style: TextButton.styleFrom(primary: Colors.cyan),
              onPressed: resetHandler,
              child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
