import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/style.dart';

BoxDecoration boxDecoration({double radius = BOXRADIUS, Color color = Colors.white}) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color
  );
}