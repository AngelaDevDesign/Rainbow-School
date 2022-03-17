import 'package:flutter/material.dart';

class ClassStudents {
  String className;
  String img;
  String classCategory;
  Color color;

  ClassStudents(
      {
        required this.color,
        required this.className,
        required this.img,
        required this.classCategory});
}