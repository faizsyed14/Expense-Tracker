import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final Function sethandler;
  final String answertext;
  answer(this.sethandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 70, 54, 244)),
        ),
        onPressed: sethandler,
        child: Text(answertext),
      ),
    );
  }
}
