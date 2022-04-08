import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../utils/global_variables/icons.dart';
import '../utils/global_variables/style.dart';
import '../utils/global_variables/text.dart';
import '../utils/style/box_style.dart';

Container classCategoryBox(String? classCategory, BuildContext context) {
  return Container(
    decoration: boxDecoration(color: Colors.black12, radius: BOXRADIUS / 4),
    child: classCategory != null
        ? Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ELEMENTMARGIN/2),
          child: textStyle(
              text: classCategory,
              fontSize: PARAGRAPHTEXT,
              fontColor: Colors.white,
              weight: FontWeight.bold),
        ))
        : ERROR,
  );
}