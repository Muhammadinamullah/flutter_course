import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
