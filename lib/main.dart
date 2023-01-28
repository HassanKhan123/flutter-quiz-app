import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuestions() {
    print('Answer called');
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
            const Text('The Question!'),
            ElevatedButton(
                onPressed: () => print('sdsdsd'),
                child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () {
                  print('aaa');
                },
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: answerQuestions, child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
