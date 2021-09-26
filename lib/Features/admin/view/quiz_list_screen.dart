import 'package:basic_app/Features/admin/controller/state_management.dart';
import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';
import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

import 'addQuiz_dialog.dart';

class QuizListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context, builder: (context) => AddQuizDialog());
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: StreamBuilder<Quiz>(
          stream: StateManagement.quizStream.stream,
          builder: (context, snapshot) {
            print('updated stream');
            return Container(
              decoration: containerDecoration(),
              child: ListView(
                children: quizList
                    .map((quiz) => Card(
                          child: ListTile(
                            title: Text(
                              quiz.question.toString(),
                              style: TextStyle(fontSize: 18),
                            ),
                            subtitle: Column(
                              children: quiz.options!
                                  .map((quizOption) => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(quizOption.option.toString(),
                                              style: TextStyle(
                                                  color:
                                                      Colors.deepPurpleAccent)),
                                          SizedBox(width: 40),
                                          Text(quizOption.score.toString(),
                                              style: TextStyle(
                                                  color: Colors.purpleAccent)),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            );
          }),
    );
  }
}
