import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/box.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';

import '../utils/global_variables/icons.dart';
import '../utils/global_variables/text.dart';

Container classCategoryBox(String? classCategory) {
  return Container(
    decoration: boxDecoration(color: Colors.black12),
    child: classCategory != null
        ? Center(
        child: textStyle(
            text: classCategory,
            fontSize: PARAGRAPHTEXT,
            fontColor: Colors.white,
            weight: FontWeight.bold))
        : ERROR,
  );
}