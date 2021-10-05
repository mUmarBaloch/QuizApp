import 'dart:async';

import 'package:basic_app/core/model/quiz_model.dart';

class StateManagement {
  static StreamController<Quiz> quizStream = StreamController.broadcast();

  updateStream(Quiz quiz) {
    quizStream.sink.add(quiz);
  }

  dismissStream() => quizStream.close();
}
