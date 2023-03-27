import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "Great Job";
    if (resultScore <= 15) {
      resultText = "You are weird";
    } else if (resultScore <= 25) {
      resultText = "You are okaay ... ";
    } else if (resultScore > 30) {
      resultText = "You are AWESOME !!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 120, right: 120),
          child: OutlinedButton(
            child: Text(
              "Reset Quiz",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: resetQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.lightBlueAccent,
              side: BorderSide(color: Colors.lightBlue),
            ),
          ),
        )
      ],
    );
  }
}
