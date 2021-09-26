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

// input decoration

InputDecoration inputDecoration() {
  return InputDecoration(
    labelText: 'Question*',
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: Colors.deepPurple, width: 2, style: BorderStyle.solid)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: Colors.deepPurple, width: 2, style: BorderStyle.solid)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: Colors.deepPurple, width: 2, style: BorderStyle.solid)),
  );
}
