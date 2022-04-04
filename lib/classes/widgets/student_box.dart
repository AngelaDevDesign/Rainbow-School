import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/utils/tools/routing.dart';
import '../../shared/widgets/style/box.dart';
import '../../students/pages/student_page.dart';
import '../domain/student.dart';

class StudentBox extends StatelessWidget {

  Student student;
  ClassStudents classStudent;

  StudentBox({Key? key, required this.student, required this.classStudent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 1.0, horizontal: PAGEMARGIN * 3),
          padding: const EdgeInsets.all(ELEMENTMARGIN),
          decoration: boxDecoration(color: Colors.white),
          child: Row(
            children: [
              const Icon(Icons.person, color: Colors.black),
              const SizedBox(width: ELEMENTMARGIN),
              textStyle(text: student.nombre, weight: FontWeight.bold)
            ],
          )),
      onTap: () => goToPage(page: StudentPage(student: student, classStudent: classStudent), context: context),
    );
  }
}
