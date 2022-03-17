import 'package:lista_clase_colegio/classes/domain/student.dart';
import '../../shared/repository/repository.dart';

Future<List<Student>> getClassStudents (String className) async {
  List<Student> allStudents = await getStudentsData();
  //List<Student> classStudents = allStudents.where((o) => o.className == className).toList();
  return allStudents;
}