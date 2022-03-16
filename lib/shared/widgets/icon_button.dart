import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/tools/routing.dart';

import '../../home/pages/home_page.dart';

IconButton iconButton({required Icon icon, Color color = Colors.black, Widget? page, required dynamic context}) {
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
