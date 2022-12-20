// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application/shared/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/img/Ahmed.jpg")),
                  accountEmail: Text("Ahmed@yahoo.com"),
                  accountName: Text("Ahmed sayed",
                      style: TextStyle(
                        color: Color.fromRGBO(79, 4, 4, 1),
                      )),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/download.jpg"),
                          fit: BoxFit.cover))),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text("My products"),
                leading: Icon(Icons.add_shopping_cart),
                onTap: () {},
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {},
              ),
              ListTile(
                title: Text("logout"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Color.fromARGB(255, 114, 3, 3)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart)),
                    ],
                  ),
                  Text("\$50000", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
          backgroundColor: appbarGreen,
          title: Text("Home"),
        ));
  }
}
