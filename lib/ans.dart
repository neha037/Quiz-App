//File for answer widget 
import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  final Function seltHandler;
  final String ansText;
  Ans(this.seltHandler, this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(ansText),
        onPressed: seltHandler,
      ),
    );
  }
}
