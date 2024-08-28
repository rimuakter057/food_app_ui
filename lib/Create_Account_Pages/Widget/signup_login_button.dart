import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';
import 'package:food_app_ui/Create_Account_Pages/create_account_page.dart';

import '../signup_option_page.dart';

class SignupLoginButton extends StatelessWidget {
  final double? height;
  final double? width;
  const SignupLoginButton({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CreatePage()));
          },
          child: Container(
            height: height ?? 50,
            width: width ?? 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: const Center(
              child: CustomText(
                text: 'SignUp',
                color: Colors.deepPurple,
                fontSize: 25,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignupOption()));
          },
          child: Container(
            height: height ?? 50,
            width: width ?? 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: const Center(
              child: CustomText(
                text: 'Login',
                color: Colors.deepPurple,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
