import 'package:flutter/material.dart';


class QuizResult extends StatelessWidget {
  final int finalscore;
  final Function resetHandle;
  QuizResult(this.finalscore, this.resetHandle);
  //getter
  String get result{
    var resultText ;
    if(finalscore<=8){
      resultText = 'You are awesome' ; 
    }else if (finalscore <= 12) {
      resultText = 'Preety Likeable';
    }else{
      resultText = 'You are so Bad!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            result,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandle,
          ),
        ],
      ),
    );
  }
}