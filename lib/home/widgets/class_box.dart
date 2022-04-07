import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/classes/pages/class_page.dart';
import 'package:lista_clase_colegio/shared/widgets/image_box.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/icons.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/style.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/tools/routing.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/style/box_style.dart';
import '../../shared/widgets/class_category_box.dart';
import '../utils/style.dart';

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
      padding: const EdgeInsets.only(bottom: ELEMENTMARGIN),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: boxDecoration(
                radius: BOXRADIUS,
                color: colors[widget.classStudents.className]!,
                opacity: 0.3),
            child: MaterialButton(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageBox(img: widget.classStudents.img, size: ICONSIZE),
                    textStyle(
                        text: widget.classStudents.className.toUpperCase(),
                        fontSize: HEADERSIZE,
                        fontFamily: TITLEFONT,
                        align: 'center',
                        weight: FontWeight.bold),
                    SizedBox(height: ELEMENTMARGIN),
                    classCategoryBox(
                        widget.classStudents.classCategory, context)
                  ],
                ),
                onPressed: () {
                  goToPage(
                      page: ClassPage(classStudent: widget.classStudents),
                      context: context);
                }),
          ),
        ],
      ),
    );
  }
}
