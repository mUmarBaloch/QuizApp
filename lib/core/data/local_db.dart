import 'dart:convert';

import 'package:basic_app/core/data/temp_data.dart';
import 'package:basic_app/core/model/quiz_model.dart';
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

    //   var a = preferences?.getStringList('quizList');
    //   print(a);
  }

  Future<List<Quiz>> getData() async {
    var getFromPref = await preferences?.getStringList('quizList');
    var decoded = getFromPref?.map((e) => Quiz.fromMap(jsonDecode(e))).toList();
    return quizList = decoded ?? quizList;
  }
}
