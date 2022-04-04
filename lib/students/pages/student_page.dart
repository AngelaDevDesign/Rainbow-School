import 'package:flutter/material.dart';
import '../../classes/domain/student.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/widgets/style/text.dart';

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
                padding: const EdgeInsets.symmetric(
                    vertical: PAGEMARGIN * 2, horizontal: PAGEMARGIN * 0.6),
                child: textStyle(
                    text: 'Pagina estudiante', fontColor: Colors.white))));
  }
}
