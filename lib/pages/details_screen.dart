import 'package:flutter/material.dart';
import 'package:flutter_application/shared/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Text("\$50000", style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
          backgroundColor: appbarGreen,
          title: Text("Home"),
        ));
  }
}

      body: Text("details")
      );
  }
}
