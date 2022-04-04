import 'package:lista_clase_colegio/classes/domain/student.dart';
import '../../shared/repository/repository.dart';

Future<List<Student>> getClassStudents (String className) async {
  List<Student> allStudents = await getStudentsData();
  return allStudents.where((elem) => elem.clase == className).toList();
}