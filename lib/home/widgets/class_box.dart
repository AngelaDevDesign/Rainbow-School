import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/classes/pages/class_page.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/theme.dart';
import 'package:lista_clase_colegio/shared/widgets/image_box.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/icons.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/style.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/tools/routing.dart';
import 'package:lista_clase_colegio/shared/widgets/style/box.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/widgets/class_category_box.dart';

class ClassBox extends StatefulWidget {
  ClassStudents classStudents;

  ClassBox({Key? key, required this.classStudents}) : super(key: key);

  @override
  State<ClassBox> createState() => _ClassBoxState();
}

class _ClassBoxState extends State<ClassBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ELEMENTMARGIN * 1.5, vertical: ELEMENTMARGIN),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.symmetric(vertical: ELEMENTMARGIN * 1.5),
        decoration: boxDecoration(
            radius: BOXRADIUS * 4, color: widget.classStudents.color),
        child: MaterialButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageBox(img: widget.classStudents.img, size: ICONSIZE),
                textStyle(
                    text: widget.classStudents.className,
                    fontSize: HEADERSIZE,
                    fontColor: TEXTCOLOR,
                    fontFamily: 'PatrickHand',
                    weight: FontWeight.bold),
                textStyle(
                    text: 'CLASS',
                    fontColor: TEXTCOLOR,
                    fontSize: PARAGRAPHTEXT),
                const SizedBox(height: ELEMENTMARGIN  * 0.5),
                classCategoryBox(widget.classStudents.classCategory)
              ],
            ),
            onPressed: () {
              goToPage(
                  page: ClassPage(classStudents: widget.classStudents),
                  context: context);
            }),
      ),
    );
  }
}
