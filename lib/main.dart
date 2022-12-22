import 'package:flutter/material.dart';
import 'package:flutter_application/pages/details_screen.dart';
import 'package:flutter_application/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Details(),
    );
  }
}
