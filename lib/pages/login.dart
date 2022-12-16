// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/register.dart';
import 'package:flutter_application/shared/consants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 70,
                ),
                Mytextfield(
                  textInputTypee: TextInputType.emailAddress,
                  ispassword: false,
                  hinttextt: "enter Your Email:",
                ),
                const SizedBox(
                  height: 35,
                ),
                Mytextfield(
                  textInputTypee: TextInputType.text,
                  ispassword: true,
                  hinttextt: "enter Your password:",
                ),
                const SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 73, 179, 105)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account?",
                        style: TextStyle(fontSize: 20)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text('sign up',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    )
                  ],
                )
              ]),
        ),
      ),
    ));
  }
}
