import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/widgets/style/box.dart';
import '../domain/student.dart';

class StudentBox extends StatelessWidget {
  Student student;

  StudentBox({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1.0, horizontal: PAGEMARGIN * 3),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: boxDecoration(color: Colors.white),
        child: Row(
          children: [
            const Icon(Icons.person, color: Colors.black),
            textStyle(text: student.nombre, weight: FontWeight.bold)
          ],
        ));
  }
}
