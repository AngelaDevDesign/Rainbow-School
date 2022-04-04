import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/theme.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/style.dart';
import '../widgets/class_box.dart';
import '../widgets/teacher_username.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> kindergartnerClasses = [
    ClassBox(
      classStudents: ClassStudents(
          className: 'SOFT BLUE',
          img: 'conejito.png',
          classCategory: 'KINDERGARTEN',
          color: SOFT_BLUE)),
    ClassBox(
      classStudents: ClassStudents(
        className: 'SOFT PINK',
        img: 'oso-de-peluche.png',
        classCategory: 'KINDERGARTEN',
        color: SOFT_PINK))
  ];
  List<Widget>? primaryFirstClasses = [
    ClassBox(
      classStudents: ClassStudents(
          className: 'RED', img: 'fresa.png', classCategory: 'PRIMARY', color: RED),
    ),
    ClassBox(
        classStudents: ClassStudents(
            className: 'ORANGE',
            img: 'rodaja-de-naranja.png',
            classCategory: 'PRIMARY',
            color: ORANGE))
  ];
  List<Widget> primarySecondClasses = [
    ClassBox(
      classStudents: ClassStudents(
        className: 'YELLOW',
        img: 'lemon.png',
        classCategory: 'PRIMARY',
        color: YELLOW)),
    ClassBox(
      classStudents: ClassStudents(
        className: 'GREEN',
        img: 'aguacate.png',
        classCategory: 'PRIMARY',
        color: GREEN))
  ];
  List<Widget> primaryThirdClasses = [
    ClassBox(
      classStudents: ClassStudents(
        className: 'PURPLE',
        img: 'uva.png',
        classCategory: 'PRIMARY',
        color: PURPLE)),
    ClassBox(
      classStudents: ClassStudents(
        className: 'DARK GREEN',
        img: 'ensalada.png',
        classCategory: 'SECONDARY',
        color: DARK_GREEN)),
  ];
  List<Widget> secondaryClasses = [
    ClassBox(
      classStudents: ClassStudents(
        className: 'DARK PURPLE',
        img: 'berenjenas.png',
        classCategory: 'SECONDARY',
        color: DARK_PURPLE))
  ];

  Row classesRow({List<Widget>? rowClasses}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: rowClasses!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
          body: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: PAGEMARGIN * 2, horizontal: PAGEMARGIN * 0.6),
              child: Column(
                children: [
                  textStyle(
                      text: TITLEHOME,
                      fontSize: TITLESIZE * 1.5,
                      fontFamily: TITLECLASSFONT,
                      fontColor: TITLECOLOR,
                      weight: FontWeight.bold),
                  teacherUsername('Miss Rain Teacher'),
                  Expanded(
                    child: ListView(shrinkWrap: true, children: [
                      classesRow(rowClasses: kindergartnerClasses),
                      classesRow(rowClasses: primaryFirstClasses),
                      classesRow(rowClasses: primarySecondClasses),
                      classesRow(rowClasses: primaryThirdClasses),
                      classesRow(rowClasses: secondaryClasses),
                    ]),
                  ),
                ],
              ))),
    );
  }
}
