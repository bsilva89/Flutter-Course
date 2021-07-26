import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var num = 0;

  void _answerQuestion() {
    setState(() => questionIndex++);
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = ['Question 1', 'Question 2'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex],
            ),
            Answer(buttonText: 'Answer1', selectHandler: _answerQuestion),
            Answer(buttonText: 'Answer2', selectHandler: _answerQuestion),
            Answer(buttonText: 'Answer3'),
          ],
        ),
      ),
    );
  }
}
