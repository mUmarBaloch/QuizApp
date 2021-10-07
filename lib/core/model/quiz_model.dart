import 'quiz_option_model.dart';

class Quiz {
  String? question;
  List<QuizOption> options;

  Quiz({required this.question, required this.options});

  Quiz.fromMap(Map map)
      : question = map['question'],
        options = List.from(map['options'])
            .map((item) => QuizOption.fromMap(item))
            .toList();

  Map<dynamic, dynamic> toMap() => {
        'question': question,
        'options': options.map((e) => e.toMap()).toList(),
      };
}
