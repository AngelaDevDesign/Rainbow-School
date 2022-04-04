import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/tools/routing.dart';

IconButton iconButton({required Icon icon, Color color = Colors.black, Widget? page, dynamic context}) {
  return IconButton(
    icon: icon,
    color: color,
    onPressed: () {
      if (page != null) {
        goToPage(page: page, context: context);
      }
    },
  );
}
