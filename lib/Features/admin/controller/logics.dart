import 'package:basic_app/core/data/local_db.dart';
import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';

import 'state_management.dart';

class AdminLogics {
  addQuiz(quiz) {
    quizList.add(quiz);
    LocalDb().setData(quizList);
    StateManagement().updateStream(quiz);
  }

  deleteQuiz(Quiz quiz) {
    quizList.remove(quiz);
    LocalDb().setData(quizList);
    StateManagement().updateStream(quiz);
  }
}
