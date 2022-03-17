import 'package:flutter/material.dart';
import 'package:lista_clase_colegio/shared/utils/global_variables/icons.dart';

class ImageBox extends StatefulWidget {

  String? img;
  num? size;

  ImageBox({Key? key, this.img, this.size}) : super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * widget.size!,
        height: MediaQuery.of(context).size.width * widget.size!,
        child: widget.img != null ? Image.asset('assets/images/${widget.img}') : ERROR
      ),
    );
  }
}
