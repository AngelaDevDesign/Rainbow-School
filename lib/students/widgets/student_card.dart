import 'package:flutter/material.dart';

import '../../classes/domain/student.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/utils/global_variables/text.dart';
import '../../shared/utils/style/box_style.dart';
import '../../shared/widgets/style/text.dart';

class StudentCard extends StatefulWidget {
  Student student;

  StudentCard({Key? key, required this.student}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: ELEMENTMARGIN),
      padding: const EdgeInsets.all(ELEMENTMARGIN * 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: boxShadow(0.3)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textStyle(
              text: 'INFORMATION',
              weight: FontWeight.bold,
              fontSize: HEADERSIZE),
          const Divider(thickness: 1.5, color: Colors.black87),
          const SizedBox(height: ELEMENTMARGIN),
          textStyle(text: 'Name:', weight: FontWeight.bold),
          textStyle(text: widget.student.nombre),
          const SizedBox(height: 8.0),
          textStyle(text: 'Parents:', weight: FontWeight.bold),
          textStyle(text: widget.student.padres),
          const SizedBox(height: 8.0),
          textStyle(text: 'Phone:', weight: FontWeight.bold),
          textStyle(text: widget.student.telefono),
          const SizedBox(height: 8.0),
          textStyle(text: 'Class:', weight: FontWeight.bold),
          textStyle(text: widget.student.clase),
          const SizedBox(height: 8.0),
          textStyle(text: 'Absences:', weight: FontWeight.bold),
          textStyle(
              text: widget.student.faltas == '0'
                  ? 'none'
                  : widget.student.faltas),
          const Divider(thickness: 1.5, color: Colors.black87),
        ],
      ),
    );
  }
}
