import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_button.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';


import '../HomePage/bottom_nav_page.dart';

class GmailLogin extends StatelessWidget {
  const GmailLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "rimu***@gmail.com", color: Colors.grey,
            ),
            const SizedBox(height: 20,),
            const LinearProgressIndicator(
              minHeight: 5,
              color: Colors.deepPurple,
            ),
              const SizedBox(height: 20,),
            CustomButton(text: "Continue",callback: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
            },),
          ],
        ),
      ),
    );
  }
}
