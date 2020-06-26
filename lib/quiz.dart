import 'package:flutter/material.dart';
import './ques.dart';
import './ans.dart';

class QuizFunction extends StatelessWidget {
  final List<Map<String, Object>>quesList;
  final int quesIndex;
  final Function ansQues;
  QuizFunction({
    @required this.quesList,
    @required this.ansQues,
    @required this.quesIndex
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Ques(
          quesList[quesIndex]['quesText'],
        ),
        ...(quesList[quesIndex]['ans'] as List<Map<String, Object>>).map((ans) {
          return Ans(()=>ansQues(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}