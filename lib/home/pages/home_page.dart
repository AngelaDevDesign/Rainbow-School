import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/theme.dart';
import 'package:lista_clase_colegio/shared/widgets/text_button.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/utils/global_variables/style.dart';
import '../widgets/class_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> kindergartnerClasses = [
    ClassBox(
        color: SOFT_BLUE,
        text: 'SOFT BLUE',
        img: 'conejito.png',
        classCategory: 'KINDERGARTEN'),
    ClassBox(
        color: SOFT_PINK,
        text: 'SOFT PINK',
        img: 'oso-de-peluche.png',
        classCategory: 'KINDERGARTEN')
  ];
  List<Widget> primaryFirstClasses = [
    ClassBox(
        color: RED, text: 'RED', img: 'fresa.png', classCategory: 'PRIMARY'),
    ClassBox(
        color: ORANGE,
        text: 'ORANGE',
        img: 'rodaja-de-naranja.png',
        classCategory: 'PRIMARY')
  ];
  List<Widget> primarySecondClasses = [
    ClassBox(
        color: YELLOW,
        text: 'YELLOW',
        img: 'lemon.png',
        classCategory: 'PRIMARY'),
    ClassBox(
        color: GREEN,
        text: 'GREEN',
        img: 'aguacate.png',
        classCategory: 'PRIMARY')
  ];
  List<Widget> primaryThirdClasses = [
    ClassBox(
        color: PURPLE,
        text: 'PURPLE',
        img: 'uva.png',
        classCategory: 'PRIMARY'),
    ClassBox(
        color: DARK_GREEN,
        text: 'DARK GREEN',
        img: 'ensalada.png',
        classCategory: 'SECONDARY'),
  ];
  List<Widget> secondaryClasses = [
    ClassBox(
        color: DARK_PURPLE,
        text: 'DARK PURPLE',
        img: 'berenjenas.png',
        classCategory: 'SECONDARY')
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
          body: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: PAGEMARGIN * 2, horizontal: PAGEMARGIN),
              color: Colors.black87,
              child: Column(
                children: [
                  textStyle(
                      text: TITLEHOME,
                      fontSize: TITLESIZE * 1.5,
                      fontFamily: 'PatrickHand',
                      fontColor: TEXTCOLOR,
                      weight: FontWeight.bold),
                  const SizedBox(height: ELEMENTMARGIN),
                  const SizedBox(height: ELEMENTMARGIN),
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
              )
          )),
    );
  }
}
