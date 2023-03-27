import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerQuestion;

  Answer(this.answerText, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue[100]),
          foregroundColor:
              MaterialStateProperty.all(Colors.deepPurpleAccent[400]),
        ),
        onPressed: answerQuestion,
        child: Text(answerText),
      ),
    );
  }
}
