import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/widgets/style/box.dart';
import 'package:lista_clase_colegio/shared/widgets/style/text.dart';

class TextButtonItem extends StatefulWidget {
  String? label;
  bool? isActive;
  Function? action;

  TextButtonItem({Key? key, this.label, this.isActive, this.action})
      : super(key: key);

  @override
  State<TextButtonItem> createState() => _TextButtonItemState();
}

class _TextButtonItemState extends State<TextButtonItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration(
          color: widget.isActive == true ? Colors.yellowAccent : Colors.white),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextButton(
              onPressed: () {
                setState(() {
                  widget.action;
                  widget.isActive = true;
                });
              },
              child: textStyle(text: widget.label!))),
    );
  }
}
