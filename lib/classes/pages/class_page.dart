import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/home/pages/home_page.dart';
import 'package:lista_clase_colegio/shared/widgets/icon_button.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';
import '../../shared/domains/class_students.dart';
import '../../shared/utils/global_variables/icons.dart';
import '../../shared/utils/global_variables/style.dart';
import '../../shared/utils/global_variables/text.dart';
import '../../shared/utils/global_variables/theme.dart';
import '../../shared/widgets/class_category_box.dart';
import '../../shared/widgets/image_box.dart';
import '../domain/student.dart';
import '../widgets/list_view.dart';

class ClassPage extends StatefulWidget {
  ClassStudents classStudents;

  ClassPage({Key? key, required this.classStudents}) : super(key: key);

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {

  List<Student>? studentsList;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.classStudents!.color,
        body: Container(
          padding: const EdgeInsets.symmetric(
              vertical: PAGEMARGIN, horizontal: PAGEMARGIN),
          child: Column(
            children: [
              ImageBox(img: widget.classStudents!.img, size: 0.15),
              textStyle(
                  text: '${widget.classStudents!.className} CLASS',
                  fontSize: BIGHEADERSIZE,
                  fontColor: TEXTCOLOR,
                  fontFamily: TITLECLASSFONT,
                  weight: FontWeight.bold),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: PAGEMARGIN * 3),
                child: classCategoryBox(widget.classStudents!.classCategory),
              ),
              ListViewStudents(className: widget.classStudents!.className),
              iconButton(icon: BACK, color: Colors.white, page: const HomePage(), context: context)
            ],
          ),
        ),
      ),
    );
  }
}
