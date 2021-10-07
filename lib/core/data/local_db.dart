import 'dart:convert';

import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDb {
  static SharedPreferences? preferences;

  Future<SharedPreferences> initPref() async {
    return preferences = await SharedPreferences?.getInstance();
  }

  stringToObject() {}
  Future setData(List<Quiz> quizList) async {
    var encoded = quizList.map((e) => jsonEncode(e.toMap())).toList();
    await preferences?.setStringList('quizList', encoded);
  }

  setHighScore() async => await preferences?.setInt('highScore', highScore);
  Future getData() async {
    var getQuizFromPref = preferences?.getStringList('quizList');
    var getHighScore = preferences?.getInt('highScore');
    await Future.delayed(Duration(seconds: 2));
    var decoded =
        getQuizFromPref?.map((e) => Quiz.fromMap(jsonDecode(e))).toList();
    quizList = decoded ?? quizList;
    highScore = getHighScore ?? highScore;
  }
}
