import 'package:flutter/material.dart';

TextStyle customText_50size() {
  return TextStyle(
    fontSize: 50,
    fontFamily: 'font_hw_01',
    color: Colors.pink,
    fontWeight: FontWeight.bold,
  );
}

TextStyle customText_35size() {
  return TextStyle(
    fontSize: 35,
    fontFamily: 'font_hw_01',
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
}

TextStyle parameterStyle(
    {colorText = Colors.blue, textStyle = FontStyle.italic}) {
  return TextStyle(
    fontSize: 52,
    fontStyle: textStyle,
    color: colorText,
  );
}
