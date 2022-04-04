import 'package:flutter/material.dart';
import '../../shared/utils/global_variables/icons.dart';
import '../../shared/utils/global_variables/text.dart';
import '../../shared/utils/global_variables/theme.dart';
import '../../shared/widgets/icon_button.dart';
import '../../shared/widgets/style/text.dart';

Row teacherUsername(String? teacherName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      iconButton(icon: TEACHER, color: Colors.white),
      textStyle(
        text: 'Welcome $teacherName',
        fontColor: TITLECOLOR,
        fontSize: HEADERSIZE,
      )
    ],
  );
}
