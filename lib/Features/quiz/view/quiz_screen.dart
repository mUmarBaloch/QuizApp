import 'package:basic_app/Features/quiz/view/result.dart';
import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';
import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Quiz> _questions = List.from(quizList);
  @override
  void initState() {
    super.initState();
    _questions.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Quiz _question = _questions.last;
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: containerDecoration(),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _question.question.toString(),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 20,
            children: _question.options!
                .map(
                  (option) => TextButton(
                      style: simpleButton(),
                      onPressed: () => setState(() {
                            bool isCorrect = option.score == 5 ? true : false;
                            if (isCorrect == true) {
                              score += 5;
                            }
                            _questions.removeLast();
                            if (_questions.length == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result()));
                            } else {
                              _question = _questions.last;
                            }
                          }),
                      child: Text(option.option.toString())),
                )
                .toList(),
          ),
        ],
      )),
    ));
  }
}
