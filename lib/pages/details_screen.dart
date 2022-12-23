// ignore_for_file: unused_element, prefer_const_constructors, unused_import, avoid_unnecessary_containers, sort_child_properties_last, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_application/shared/colors.dart';

class Details extends StatefulWidget {
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
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Text(
                  "\$50000",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )
        ],
        backgroundColor: appbarGreen,
        title: Text("Details screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/img/img2.jpg"),
            SizedBox(
              height: 12,
            ),
            Text(
              "\$50000",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                )
              ],
            )
          ],
        ),
      ),
    );

    // ignore: dead_code
    @override
    _DetailsState createState() => _DetailsState();
  }

  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _DetailsState {}
