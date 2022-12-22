// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application/shared/colors.dart';

class Item {
  String imgpath;
  double price;
  Item({required this.imgpath, required this.price});
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(imgpath: "assets/img/img1.jpg", price: 50000),
    Item(imgpath: "assets/img/img2.jpg", price: 50000),
    Item(imgpath: "assets/img/img3.jpg", price: 50000),
    Item(imgpath: "assets/img/img5.jpg", price: 50000),
    Item(imgpath: "assets/img/img6.jpg", price: 50000),
    Item(imgpath: "assets/img/img7.jpg", price: 50000),
    Item(imgpath: "assets/img/img8.jpg", price: 50000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: GridTile(
                      footer: GridTileBar(
                        trailing: IconButton(
                          color: Color.fromARGB(255, 2, 22, 7),
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                        leading: Text("\$50000"),
                        title: Text(
                          "",
                        ),
                      ),
                      child: Stack(children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset("assets/img/land crozer.jpg")),
                        ),
                      ])),
                ),
              );
            }),
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
