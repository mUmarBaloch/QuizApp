import 'package:basic_app/shared/styles.dart';
import 'package:flutter/material.dart';

TextField inputField(controller, hint) {
  return TextField(
    controller: controller,
    decoration: inputDecoration().copyWith(labelText: '$hint'),
  );
}
