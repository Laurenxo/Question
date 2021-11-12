import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    List questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'anwsers': ['Green', 'Red', 'Yellow', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'anwsers': ['Dog', 'Cat', 'Pig', 'Elephent']
      },
    ];

    void answerQuestion() {
      setState(() {
        _questionIndex += 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...((questions[_questionIndex]['anwsers'] as List<String>)
                      .map((answer) => Answer(answerQuestion, answer))),
                ],
              )
            : const Center(
                child: Text('We have more questions'),
              ),
      ),
    );
  }
}
