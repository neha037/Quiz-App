
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //we will create a state to connect both class
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<MyApp> {
  final _quesList = const [
    {
      'quesText': 'What iss your favorite color?',
      'ans': [
        {'text':'Red', 'score': 3 }, 
        {'text':'Black', 'score': 1 }, 
        {'text':'Yellow', 'score': 10 }, 
        {'text':'White', 'score': 5 }, 
      ],
    },
    {
      'quesText': 'What is your favorite animal?',
      'ans': [
        {'text':'Panda', 'score': 3 }, 
        {'text':'Rabbit', 'score': 1 }, 
        {'text':'Lion', 'score': 10 }, 
        {'text':'Squirrel', 'score': 5 }, 
      ],
    },
    {
      'quesText': 'Which is your favorite Country?',
      'ans': [
        {'text':'India', 'score': 3 }, 
        {'text':'Japan', 'score': 1 }, 
        {'text':'USA', 'score': 10 }, 
        {'text':'France', 'score': 5 }, 
      ],
    },
  ];
  var _quesIndex = 0; //creating a variable to propogate
  var _scoreTotal = 0; //variable to calculate Total Score
  //Function for restarting the quiz
  void _resetquiz(){
    setState(() {
      _quesIndex = 0; 
      _scoreTotal = 0;
    });
    
  }
  //method to increase varibale
  void _ansQues(int score) {
    _scoreTotal = _scoreTotal + score;
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Widget Starts here
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        //App body Starts here
        body: _quesIndex < _quesList.length
        ? QuizFunction(
          ansQues: _ansQues,
          quesIndex: _quesIndex,
          quesList: _quesList,
        )
        : QuizResult(_scoreTotal, _resetquiz),
      )
    );
  }
}
