
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global_variables/style.dart';

BoxDecoration boxDecoration(
    {double radius = BOXRADIUS,
      Color color = Colors.white,
      Color? borderColor,
      double borderWidth = 3.0, double? opacity, double blurRadius = 5.0}) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: borderColor != null ? Border.all(
        color: borderColor,
        width: borderWidth,
      ) : null,
      color: color,
      boxShadow: opacity != null ? boxShadow(opacity, blurRadius) : null
  );
}

List<BoxShadow> boxShadow(double opacity, double blurRadius) {
  return [
    BoxShadow(
      color: Colors.grey.withOpacity(opacity),
      spreadRadius: 2,
      blurRadius: blurRadius,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];
}