import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.all(10.0),
      width: double.infinity,
    );
  }
}
