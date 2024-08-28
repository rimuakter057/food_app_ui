import 'package:flutter/material.dart';

class SignupLogin extends StatefulWidget {
  const SignupLogin({super.key});

  @override
  State<SignupLogin> createState() => _SignupLoginState();
}

class _SignupLoginState extends State<SignupLogin> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30),
              ),),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
              ),)
        ],),)
      ],),
    );
  }
}
