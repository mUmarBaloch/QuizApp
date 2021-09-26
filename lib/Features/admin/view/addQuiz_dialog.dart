import 'package:basic_app/Features/admin/controller/state_management.dart';
import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';
import 'package:basic_app/core/model/quiz_option_model.dart';
import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

class AddQuizDialog extends StatelessWidget {
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
            TextField(
              controller: _questionController,
              decoration: inputDecoration(),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _correctOptionController,
              decoration:
                  inputDecoration().copyWith(labelText: 'Correct Option*'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _secondOptionController,
              decoration: inputDecoration().copyWith(labelText: '2nd Option*'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _thirdOptionController,
              decoration: inputDecoration().copyWith(labelText: '3rd Option*'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _forthOptionController,
              decoration: inputDecoration().copyWith(labelText: '4th Option*'),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {
                var _quizOption = [
                  QuizOption(
                      option: '${_correctOptionController.text}', score: 5),
                  QuizOption(
                      option: '${_secondOptionController.text}', score: 0),
                  QuizOption(
                      option: '${_thirdOptionController.text}', score: 0),
                  QuizOption(
                      option: '${_forthOptionController.text}', score: 0),
                ];
                var _quiz = Quiz(
                    question: '${_questionController.text}',
                    options: _quizOption..shuffle());
                quizList.add(_quiz);
                StateManagement().addDataToStream(_quiz);
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
}
