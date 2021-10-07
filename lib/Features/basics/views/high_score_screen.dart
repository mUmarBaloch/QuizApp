import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

class HighScore extends StatelessWidget {
  const HighScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: containerDecoration(),
        child: Wrap(
          spacing: 20,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            SafeArea(
                child: Text(
              'High Score',
              style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
            Text(
              '$highScore',
              style: TextStyle(
                  fontSize: 80,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 3),
                      color: Colors.white,
                    )
                  ]),
            ),
            TextButton(
                style: simpleButton(),
                onPressed: () => Navigator.pop(context),
                child: Text('return'))
          ],
        ),
      ),
    );
  }
}
