
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global_variables/style.dart';

BoxDecoration boxDecoration(
    {double radius = BOXRADIUS,
      Color color = Colors.white,
      Color? borderColor,
      double borderWidth = 3.0, double? opacity}) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: borderColor != null ? Border.all(
        color: borderColor,
        width: borderWidth,
      ) : null,
      color: color,
      boxShadow: opacity != null ? boxShadow(opacity) : null
  );
}

List<BoxShadow> boxShadow(double opacity) {
  return [
    BoxShadow(
      color: Colors.black87.withOpacity(opacity),
      spreadRadius: 2,
      blurRadius: 5,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ];
}