import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/theme.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/style.dart';
import '../widgets/class_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> allClasses = [
    ClassBox(
        classStudents: ClassStudents(
            className: 'softblue',
            img: 'blue_flower.png',
            classCategory: 'KINDER')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'softpink',
            img: 'pink_flower.png',
            classCategory: 'KINDER')),
    ClassBox(
      classStudents: ClassStudents(
          className: 'red',
          img: 'fresa.png',
          classCategory: 'PRIMARY'),
    ),
    ClassBox(
        classStudents: ClassStudents(
            className: 'orange',
            img: 'rodaja-de-naranja.png',
            classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'yellow',
            img: 'lemon.png',
            classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'softgreen',
            img: 'aguacate.png',
            classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'softpurple',
            img: 'uva.png',
            classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'darkgreen',
            img: 'ensalada.png',
            classCategory: 'SECONDARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'darkpurple',
            img: 'berenjenas.png',
            classCategory: 'SECONDARY'))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              /*decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/arco_iris_22.png"),
                    fit: BoxFit.cover),
              ),*/
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: PAGEMARGIN, horizontal: PAGEMARGIN / 2),
                child: Column(
                  children: [
                    SizedBox(
                      child: Image.asset("assets/images/hogar.png"),
                      height: 40.0,
                    ),
                    textStyle(
                        text: TITLEHOME,
                        fontSize: TITLESIZE,
                        fontFamily: TITLEFONT,
                        fontColor: TITLECOLOR,
                        weight: FontWeight.bold),
                    const SizedBox(height: ELEMENTMARGIN * 3),
                    Expanded(
                      child: ListView(
                          shrinkWrap: true,
                          children: allClasses,
                          scrollDirection: Axis.horizontal),
                    ),
                  ],
                ),
              ))),
    );
  }
}
