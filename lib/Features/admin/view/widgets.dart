import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

TextField inputField(controller, hint) {
  return TextField(
    controller: controller,
    decoration: inputDecoration().copyWith(labelText: '$hint'),
  );
}

List<Widget> customForm(
        _questionController,
        _correctOptionController,
        _secondOptionController,
        _thirdOptionController,
        _forthOptionController) =>
    [
      inputField(_questionController, 'Question*'),
      SizedBox(
        height: 10,
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
    ];

List<Widget> addBtn(BuildContext context, addOptions, addQuiz, methods) {
  return [
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
    )
  ];
}
