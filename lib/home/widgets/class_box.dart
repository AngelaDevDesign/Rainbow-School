import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/classes/pages/class_page.dart';
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
        padding: const EdgeInsets.symmetric(vertical: ELEMENTMARGIN),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: boxDecoration(
            radius: BOXRADIUS * 4, color: widget.classStudents.color),
        child: MaterialButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageBox(img: widget.classStudents.img, size: 0.12),
                textStyle(
                    text: widget.classStudents.className,
                    //fontColor: TEXTCOLOR,
                    fontSize: HEADERSIZE,
                    fontColor: Colors.black87,
                    fontFamily: 'PatrickHand',
                    weight: FontWeight.bold,
                    align: 'center'),
                textStyle(
                    text: 'CLASS',
                    //fontColor: TEXTCOLOR,
                    fontColor: Colors.black87,
                    fontSize: PARAGRAPHTEXT,
                    align: 'center'),
                const SizedBox(height: ELEMENTMARGIN),
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
