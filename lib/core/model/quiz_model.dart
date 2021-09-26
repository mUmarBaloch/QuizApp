import 'package:flutter/foundation.dart';

import 'quiz_option_model.dart';

class Quiz {
  final String? question;
  final List<QuizOption>? options;

  Quiz({@required this.question, @required this.options});
}
