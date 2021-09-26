import '../model/quiz_model.dart';
import '../model/quiz_option_model.dart';

int score = 0;

List<Quiz> quizList = [
  Quiz(question: 'Lenovo is a Tech company', options: [
    QuizOption(option: 'Yes!', score: 5),
    QuizOption(option: 'No', score: 0)
  ]),
  Quiz(question: 'Lion is the king of jungle', options: [
    QuizOption(option: 'Not at All', score: 0),
    QuizOption(option: 'Yes!', score: 5)
  ]),
  Quiz(question: 'Lion is the king sdfsdof jungle', options: [
    QuizOption(option: 'Not at All', score: 0),
    QuizOption(option: 'Yesasd!', score: 5)
  ]),
];
