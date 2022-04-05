import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../classes/domain/student.dart';
import '../../classes/pages/class_page.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/icons.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/utils/global_variables/text.dart';
import '../../shared/widgets/icon_button.dart';
import '../widgets/student_card.dart';

class StudentPage extends StatefulWidget {
  Student student;
  ClassStudents classStudent;

  StudentPage({Key? key, required this.student, required this.classStudent})
      : super(key: key);

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: widget.classStudent!.color,
            body: Container(
                margin: const EdgeInsets.symmetric(vertical: PAGEMARGIN),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: iconButton(
                              icon: BACK,
                              color: Colors.white,
                              page:
                                  ClassPage(classStudent: widget.classStudent),
                              context: context),
                        ),
                      ],
                    ),
                    const Icon(Icons.person,
                        color: Colors.white, size: 60.0),
                    textStyle(
                        text: widget.student.nombre,
                        fontSize: HEADERSIZE,
                        fontColor: Colors.white,
                        weight: FontWeight.bold),
                    const SizedBox(height: 20.0),
                    StudentCard(student: widget.student),
                  ],
                ))));
  }
}
