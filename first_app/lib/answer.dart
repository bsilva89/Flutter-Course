import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final Function selectHandler;

  Answer({this.buttonText, this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}
