import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// container Bg :- gradient
BoxDecoration containerDecoration() => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.deepPurpleAccent, Colors.purple]),
    );

//simple button

ButtonStyle simpleButton() => ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    foregroundColor: MaterialStateProperty.all(Colors.black),
    textStyle:
        MaterialStateProperty.all(TextStyle(fontWeight: FontWeight.bold)));
