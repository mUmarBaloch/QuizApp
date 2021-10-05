import 'package:flutter/foundation.dart';

class QuizOption {
  final String? option;
  final int? score;

  QuizOption({@required this.option, @required this.score});

  QuizOption.fromMap(Map map)
      : option = map['option'],
        score = map['score'];
  Map<dynamic, dynamic> toMap() => {'option': option, 'score': score};
}
