import 'package:flutter/material.dart';

Text textStyle({String? text, double? fontSize, String? fontFamily = 'Poppins', FontWeight? weight, Color? fontColor = Colors.black87, String? align = 'left'}) {
  return Text(
    '$text',
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: weight,
      color: fontColor,
      fontFamily: fontFamily
    ),
    textAlign: align == 'left' ? TextAlign.left : TextAlign.center,
  );
}