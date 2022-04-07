import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:lista_clase_colegio/classes/domain/student.dart';

getStudentsData() async {
  final String data = await rootBundle.loadString('assets/data/json_list_students.json');
  try{
    final jsonData = await json.decode(data);
    return List<Student>.from(jsonData.map((i) => Student.fromJson(i)));
  } catch(e) {
    return null;
  }
}