import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Blue", "score": 10},
        {"text": "Green", "score": 5},
        {"text": "Red", "score": 7},
        {"text": "Black", "score": 8},
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 5},
        {"text": "Horse", "score": 6},
        {"text": "Dog", "score": 8},
        {"text": "Cat", "score": 10},
      ]
    },
    {
      "questionText": "What's your favorite subject?",
      "answers": [
        {"text": "Religion", "score": 7},
        {"text": "Science", "score": 10},
        {"text": "Maths", "score": 6},
        {"text": "Computer Science", "score": 8},
      ]
    }
  ];
  var _totalScore = 0;

  _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
      _totalScore += score;
    }
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("This is the Quiz App"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
