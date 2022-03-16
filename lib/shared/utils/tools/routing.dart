import 'package:flutter/material.dart';

goToPage({Widget? page, dynamic context}) {
  final route = MaterialPageRoute(
    builder: (_) => page!,
  );
  Navigator.push(context, route);
}




