//File for QUestion Widget
import 'package:flutter/material.dart';

class Ques extends StatelessWidget {
  final String quesText;
  Ques(this.quesText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(9),
      child: Text(
        quesText,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}