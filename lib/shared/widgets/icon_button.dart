import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/tools/routing.dart';

IconButton iconButton({required Icon icon, Color color = Colors.black, double size = 32.0, Widget? page, dynamic context}) {
  return IconButton(
    icon: icon,
    color: color,
    iconSize: size,
    onPressed: () {
      if (page != null) {
        goToPage(page: page, context: context);
      }
    },
  );
}
