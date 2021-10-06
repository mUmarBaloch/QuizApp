import 'dart:ffi';

import 'package:basic_app/Features/admin/controller/logics.dart';
import 'package:basic_app/Features/admin/controller/state_management.dart';
import 'package:basic_app/Features/admin/view/widgets.dart';
import 'package:basic_app/core/data/local_db.dart';
import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';
import 'package:basic_app/core/model/quiz_option_model.dart';
import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

class AddQuizDialog extends StatelessWidget {
  final AdminLogics methods = AdminLogics();
  final _questionController = TextEditingController();
  final _correctOptionController = TextEditingController();
  final _secondOptionController = TextEditingController();
  final _thirdOptionController = TextEditingController();
  final _forthOptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 500,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            inputField(_questionController, 'Question*'),
            SizedBox(
              height: 30,
            ),
            inputField(_correctOptionController, 'Correct Option*'),
            SizedBox(
              height: 10,
            ),
            inputField(_secondOptionController, '2nd Option*'),
            SizedBox(
              height: 10,
            ),
            inputField(_thirdOptionController, '3rd Option*'),
            SizedBox(
              height: 10,
            ),
            inputField(_forthOptionController, '4rth Option*'),
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {
                var _quizOption, _quiz;
                _quizOption = addOptions();
                _quiz = addQuiz(_quizOption);
                methods.addQuiz(_quiz);
                Navigator.pop(context);
              },
              icon: Icon(Icons.add),
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }

  List<QuizOption> addOptions() => [
        QuizOption(option: '${_correctOptionController.text}', score: 5),
        QuizOption(option: '${_secondOptionController.text}', score: 0),
        QuizOption(option: '${_thirdOptionController.text}', score: 0),
        QuizOption(option: '${_forthOptionController.text}', score: 0),
      ];

  Quiz addQuiz(_quizOption) => Quiz(
      question: '${_questionController.text}', options: _quizOption..shuffle());
}
