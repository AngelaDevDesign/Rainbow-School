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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: ELEMENTMARGIN),
      decoration: boxDecoration(radius: BOXRADIUS),
      child: MaterialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.width * 0.12,
                decoration: boxDecoration(
                    radius: BOXRADIUS * 2,
                    color: colors[widget.classStudents.className]!,
                    blurRadius: 3.0,
                    opacity: 0.5),
                child: Center(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.width * 0.08,
                        child: Image.asset(
                            'assets/images/${widget.classStudents.img}'))),
              ),
              const SizedBox(width: ELEMENTMARGIN * 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textStyle(
                      text:
                          '${widget.classStudents.className.toUpperCase()} CLASS',
                      fontSize: SMALLHEADERSIZE,
                      weight: FontWeight.bold),
                  classCategoryBox(widget.classStudents.classCategory, context)
                ],
              )
            ],
          ),
          onPressed: () {
            goToPage(
                page: ClassPage(classStudent: widget.classStudents),
                context: context);
          }),
    );
  }
}
