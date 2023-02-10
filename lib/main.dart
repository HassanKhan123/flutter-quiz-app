import "package:flutter/material.dart";

import './result.dart';
import './quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Zebra', 'score': 6},
        {'text': 'Monkey', 'score': 5},
        {'text': 'Fish', 'score': 1},
      ]
    }
  ];

  var _questionIndex = 0;
  var totalScore = 0;

  void _answerQuestions(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestions,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(totalScore, _resetQuiz)),
    );
  }
}
