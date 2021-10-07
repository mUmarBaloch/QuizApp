import 'package:basic_app/Features/basics/views/high_score_screen.dart';
import 'package:basic_app/core/data/local_db.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() async {
  await LocalDb().initPref();
  await LocalDb().getData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
