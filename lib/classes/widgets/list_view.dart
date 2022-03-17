import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/classes/domain/student.dart';
import 'package:lista_clase_colegio/classes/widgets/student_box.dart';
import '../utils/tools.dart';

class ListViewStudents extends StatefulWidget {
  String className;

  ListViewStudents({Key? key, required this.className}) : super(key: key);

  @override
  State<ListViewStudents> createState() => _ListViewStudentsState();
}

class _ListViewStudentsState extends State<ListViewStudents> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<dynamic>(
          future: getClassStudents(widget.className),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.white));
            } else {
              List<Student> classStudents = snapshot.data;
              if (classStudents != []) {
                return ListView.builder(
                  itemBuilder: (context, int index) {
                    Student student = classStudents[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: StudentBox(student: student),
                    );
                  },
                  itemCount: classStudents.length,
                );
              } else {
                return const Center(child: Text('There are any students in this class'));
              }

            }
          }),
    );
  }
}
