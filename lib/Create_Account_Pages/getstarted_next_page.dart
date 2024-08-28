import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

import 'Widget/signup_login_button.dart';

class GetStartedNext extends StatelessWidget {
  const GetStartedNext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomText(
              color: Colors.white,fontSize: 40,
            ),
            SizedBox(
              height: 15,
            ),
            CustomText(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              text:
                  "Why Food?GourmetGo is more than just a food app—it’s a "
                      "community for food lovers. Share your favorite recipes,"
                      " leave reviews for dishes you’ve tried, and connect with "
                      "fellow food enthusiasts. Whether you're a seasoned chef or a beginner"
                      " in the kitchen, GourmetGo offers the tools and inspiration you need to "
                      "elevate your food experience."
                      " leave reviews for dishes you’ve tried, and connect with "
                      "fellow food enthusiasts. Whether you're a seasoned chef or a beginner"
                      " in the kitchen, GourmetGo offers the tools and inspiration you need to "
                      "elevate your food experience."
                      "Why Food?GourmetGo is more than just a food app—it’s a "
                      "community for food lovers. Share your favorite recipes,"
                      " leave reviews for dishes you’ve tried, and connect with "
                      "fellow food enthusiasts. Whether you're a seasoned chef or a beginner"
                      " in the kitchen, GourmetGo offers the tools and inspiration you need to "
                      "elevate your food experience."
                      " leave reviews for dishes you’ve tried, and connect with "
                      "fellow food enthusiasts. Whether you're a seasoned chef or a beginner"
                      " in the kitchen, GourmetGo offers the tools and inspiration you need to "
                      "elevate your food experience.",
            ),
            SizedBox(
              height: 30,
            ),
            SignupLoginButton(width: 145,),
          ],
        ),
      ),
    );
  }
}
