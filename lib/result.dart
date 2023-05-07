import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  final Function resulthandler;
  result(this.resultScore, this.resulthandler);
  String get resultphase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "you are awesome";
    } else if (resultScore <= 12) {
      resultText = "pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "you are bad";
    } else {
      resultText = "try again";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resulthandler,
          ),
        ],
      ),
    );
  }
}
