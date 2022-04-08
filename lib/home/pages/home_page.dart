import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/theme.dart';
import 'package:lista_clase_colegio/shared/utils/style/box_style.dart';
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
            className: 'darkgreen',
            img: 'ensalada.png',
            classCategory: 'SECONDARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'darkpurple',
            img: 'berenjenas.png',
            classCategory: 'SECONDARY')),
    ClassBox(
      classStudents: ClassStudents(
          className: 'red', img: 'fresa.png', classCategory: 'PRIMARY'),
    ),
    ClassBox(
        classStudents: ClassStudents(
            className: 'orange',
            img: 'rodaja-de-naranja.png',
            classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'yellow', img: 'lemon.png', classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'softgreen',
            img: 'aguacate.png',
            classCategory: 'PRIMARY')),
    ClassBox(
        classStudents: ClassStudents(
            className: 'softpurple', img: 'uva.png', classCategory: 'PRIMARY')),
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
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: PAGEMARGIN / 1.5, horizontal: PAGEMARGIN),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset("assets/images/hogar.png"),
                      height: 20.0,
                    ),
                    const SizedBox(width: ELEMENTMARGIN),
                    textStyle(
                        text: TITLEHOME,
                        fontSize: TITLESIZE / 2,
                        fontFamily: TITLEFONT,
                        fontColor: TITLECOLOR,
                        weight: FontWeight.bold),
                  ],
                ),
                const SizedBox(height: ELEMENTMARGIN * 3),
                textStyle(
                    text: 'NOTIFICATIONS',
                    fontSize: BIGHEADERSIZE,
                    weight: FontWeight.bold),
                const Divider(color: Colors.black87, thickness: 2.5, height: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: ELEMENTMARGIN),
                    textStyle(text: '24th May', weight: FontWeight.bold),
                    const Text('Carnival party will be held at 10.00 am'),
                    const SizedBox(height: ELEMENTMARGIN),
                    textStyle(text: '2nd June', weight: FontWeight.bold),
                    const Text('Teacher meeting at 14.00h')
                  ],
                ),
                const SizedBox(height: PAGEMARGIN / 2),
                textStyle(
                    text: 'ALL YOUR CLASSES',
                    fontSize: BIGHEADERSIZE,
                    weight: FontWeight.bold),
                const Divider(color: Colors.black87, thickness: 2.5, height: 1),
                Expanded(
                  child: ListView(shrinkWrap: true, children: allClasses),
                ),
                const SizedBox(height: PAGEMARGIN / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                          icon: const Icon(Icons.calendar_month),
                          label: textStyle(
                              text: 'CHECK SCHEDULE',
                              weight: FontWeight.bold,
                              fontColor: Colors.white),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(BOXRADIUS / 2),
                            ),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
