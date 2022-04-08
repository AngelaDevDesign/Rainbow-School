import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/utils/style/box_style.dart';
import '../../shared/utils/tools/routing.dart';
import '../../students/pages/student_page.dart';
import '../domain/student.dart';

class StudentBox extends StatelessWidget {
  Student student;
  ClassStudents classStudent;

  StudentBox({Key? key, required this.student, required this.classStudent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          padding: const EdgeInsets.all(ELEMENTMARGIN),
          decoration: boxDecoration(radius: BOXRADIUS/2, color: Colors.white, opacity: 0.3),
          child: Row(
            children: [
              const Icon(Icons.person, color: Colors.black),
              const SizedBox(width: ELEMENTMARGIN),
              textStyle(text: student.nombre, weight: FontWeight.bold)
            ],
          )),
      onTap: () => goToPage(
          page: StudentPage(student: student, classStudent: classStudent),
          context: context),
    );
  }
}
