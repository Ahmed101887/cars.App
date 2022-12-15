// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
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
              ]),
        ),
      ),
    );
  }
}
