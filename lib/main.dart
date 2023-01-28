import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestions, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: _answerQuestions, child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: _answerQuestions, child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
