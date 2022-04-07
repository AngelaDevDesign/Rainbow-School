import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/classes/domain/student.dart';
import 'package:lista_clase_colegio/classes/widgets/student_box.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/style.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../utils/tools.dart';

class ListViewStudents extends StatefulWidget {

  ClassStudents classStudent;

  ListViewStudents({Key? key, required this.classStudent}) : super(key: key);

  @override
  State<ListViewStudents> createState() => _ListViewStudentsState();
}

class _ListViewStudentsState extends State<ListViewStudents> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<dynamic>(
          future: getClassStudents(widget.classStudent.className),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.white));
            } else {
              List<Student> classStudents = snapshot.data;
              if (classStudents.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: ELEMENTMARGIN),
                  child: textStyle(
                      text: 'No students in this class',
                      fontColor: Colors.white,
                      weight: FontWeight.bold),
                );
              } else {
                if (classStudents != []) {
                  return ListView.builder(
                    itemBuilder: (context, int index) {
                      Student student = classStudents[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: StudentBox(student: student, classStudent: widget.classStudent),
                      );
                    },
                    itemCount: classStudents.length,
                  );
                } else {
                  return const Center(
                      child: Text('There are any students in this class'));
                }
              }
            }
          }),
    );
  }
}
