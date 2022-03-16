import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/classes/pages/class_page.dart';
import 'package:lista_clase_colegio/home/widgets/image_box.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/icons.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/style.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/text.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/theme.dart';
import 'package:lista_clase_colegio/shared/utils/tools/routing.dart';
import 'package:lista_clase_colegio/shared/widgets/style/box.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';

class ClassBox extends StatefulWidget {
  Color color;
  String text;
  String? img;
  String? classCategory;

  ClassBox(
      {Key? key,
      required this.color,
      required this.text,
      this.img,
      this.classCategory})
      : super(key: key);

  @override
  State<ClassBox> createState() => _ClassBoxState();
}

class _ClassBoxState extends State<ClassBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ELEMENTMARGIN * 1.5, vertical: ELEMENTMARGIN),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: ELEMENTMARGIN),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: boxDecoration(radius: BOXRADIUS, color: widget.color),
        child: MaterialButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageBox(img: widget.img),
                textStyle(
                    text: 'CLASS',
                    fontColor: TEXTCOLOR,
                    fontSize: PARAGRAPHTEXT,
                    align: 'center'),
                textStyle(
                    text: widget.text,
                    fontColor: TEXTCOLOR,
                    fontSize: HEADERSIZE,
                    weight: FontWeight.bold,
                    align: 'center'),
                const SizedBox(height: ELEMENTMARGIN),
                Container(
                  decoration: boxDecoration(),
                  child: widget.classCategory != null
                      ? Center(
                          child: textStyle(
                              text: widget.classCategory,
                              fontSize: PARAGRAPHTEXT,
                              weight: FontWeight.bold))
                      : ERROR,
                )
                /*const Divider(thickness: 1.0, color: Colors.white),
                widget.classCategory != null
                    ? Center(
                        child: textStyle(
                            text: widget.classCategory,
                            fontSize: PARAGRAPHTEXT,
                            fontColor: BASECOLOR))
                    : ERROR,
                const Divider(thickness: 1.0, color: Colors.white),*/
              ],
            ),
            onPressed: () {
              goToPage(page: const ClassPage(), context: context);
            }),
      ),
    );
  }
}
