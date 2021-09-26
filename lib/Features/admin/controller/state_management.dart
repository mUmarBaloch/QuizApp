import 'dart:async';
import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';

class StateManagement {
  static StreamController<Quiz> quizStream = StreamController();

  addDataToStream(Quiz quiz) {
    quizStream.sink.add(quiz);
  }

  dismissStream() => quizStream.close();
}
