import 'package:basic_app/Features/admin/controller/logics.dart';
import 'package:basic_app/Features/admin/view/widgets.dart';
import 'package:basic_app/core/model/quiz_model.dart';
import 'package:basic_app/core/model/quiz_option_model.dart';
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
            children: customForm(
                    _questionController,
                    _correctOptionController,
                    _secondOptionController,
                    _thirdOptionController,
                    _forthOptionController) +
                addBtn(context, addOptions, addQuiz, methods)),
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
