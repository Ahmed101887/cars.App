// ignore_for_file: unused_element, prefer_const_constructors, unused_import, avoid_unnecessary_containers, sort_child_properties_last, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_application/shared/colors.dart';

abstract class Details extends StatefulWidget {
  const Details({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                      bottom: 24,
                      child: Container(
                        child: Text(
                          "8",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );

    @override
    dynamic noSuchMethod(Invocation invocation) =>
        super.noSuchMethod(invocation);
  }
}
