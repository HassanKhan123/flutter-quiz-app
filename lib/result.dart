import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resetQuiz,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, foregroundColor: Colors.black),
          child: const Text('Restart Quiz'),
        ),
        TextButton(
          onPressed: resetQuiz,
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          child: const Text('Restart Quiz'),
        ),
        OutlinedButton(
          onPressed: resetQuiz,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.orange,
              side: const BorderSide(color: Colors.pink)),
          child: const Text('Restart Quiz'),
        )
      ],
    ));
  }
}
