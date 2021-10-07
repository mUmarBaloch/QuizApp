import 'package:basic_app/Features/admin/view/quiz_list_screen.dart';
import 'package:basic_app/Features/basics/views/high_score_screen.dart';
import 'package:basic_app/Features/quiz/view/quiz_screen.dart';
import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: containerDecoration(),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: buttons(
                onPlay: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen())),
                onHighScore: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HighScore())),
              )),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizListScreen())),
                child: Text('I am admin'),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white54)),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buttons({@required onPlay, @required onHighScore}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPlay,
          child: Text('Play'),
          style: simpleButton(),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: onHighScore,
          child: Text('High Score'),
          style: simpleButton(),
        ),
      ],
    );
  }
}
