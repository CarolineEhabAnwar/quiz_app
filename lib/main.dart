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
      "answers": ["Blue", "Red", "Green", "Yellow"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Rabbit", "Horse", "Dog", "Cat"]
    },
    {
      "questionText": "What's your favorite subjuect?",
      "answers": ["Science", "Religion", "English", "Maths"]
    }
  ];
  _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text("This is the Quiz App"),
          backgroundColor: Color.fromRGBO(200, 100, 180, 0.7)),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion)
          : Result(),
    ));
  }
}
