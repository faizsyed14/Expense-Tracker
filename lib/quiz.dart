import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  quiz({
    @required this.questions,
    @required this.answerQuestions,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questiontext']),
        ...(questions[questionIndex]["answertext"] as List<Map<String, Object>>)
            .map((Answer) {
          return answer(() => answerQuestions(Answer["score"]), Answer["Text"]);
        }).toList(),
      ],
    );
  }
}
