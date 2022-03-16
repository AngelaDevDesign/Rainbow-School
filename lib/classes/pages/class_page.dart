import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/home/pages/home_page.dart';
import 'package:lista_clase_colegio/home/widgets/image_box.dart';
import 'package:lista_clase_colegio/shared/widgets/icon_button.dart';
import '../../shared/utils/global_variables/icons.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({Key? key}) : super(key: key);

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {

  List<Widget>? pageElements;

  @override
  void initState() {
    super.initState();
    pageElements = [iconButton(icon: BACK, page: const HomePage(), context: context), const Text('Atrás')];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: pageElements!
        ),
      ),
    );
  }
}
