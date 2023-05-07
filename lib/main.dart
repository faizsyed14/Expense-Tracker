import 'package:flutter/material.dart';
import './questions.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppS();
  }
}

class _MyAppS extends State<MyApp> {
  final _questions = const [
    {
      "questiontext": "what is your age?",
      "answertext": [
        {"Text": "19", "score": 10},
        {"Text": "13", "score": 9},
        {"Text": "15", "score": 0}
      ]
    },
    {
      "questiontext": "what is your name?",
      "answertext": [
        {"Text": "19", "score": 1},
        {"Text": "13", "score": 1},
        {"Text": "15", "score": 3}
      ]
    },
    {
      "questiontext": "what is your class?",
      "answertext": [
        {"Text": "19", "score": 1},
        {"Text": "13", "score": 5},
        {"Text": "15", "score": 2}
      ]
    },
    {
      "questiontext": "what is your habits?",
      "answertext": [
        {"Text": "19", "score": 1},
        {"Text": "13", "score": 2},
        {"Text": "15", "score": 1}
      ]
    },
    {
      "questiontext": "what is your favourite color?",
      "answertext": [
        {"Text": "19", "score": 3},
        {"Text": "13", "score": 1},
        {"Text": "15", "score": 0}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
      if (_questionIndex < _questions.length) {
        print("you have more questions");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Questions('Question'),
      ),
      body: _questionIndex < _questions.length
          ? quiz(
              questions: _questions,
              answerQuestions: _answerQuestions,
              questionIndex: _questionIndex)
          : result(_totalScore, _resetQuiz),
    ));
  }
}
