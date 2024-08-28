import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';
import 'package:food_app_ui/Create_Account_Pages/password_change.dart';
import 'Widget/custom_appbar.dart';
import 'Widget/custom_button.dart';
import 'Widget/verification.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height*.02,
              ),
              const CustomAppBar(),
              const CustomText(
                text: 'OTP',
                color: Colors.deepPurple,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                text: 'Email Verification',
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(
                text: 'Enter the verification code',
                fontSize: 25,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w200,
              ),
              const SizedBox(
                height: 30,
              ),
              const Verification(),
              const SizedBox(
                height: 15,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "didn't receive code?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text:"Resend ",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(text: 'Continue',fontSize:25,callback: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const PasswordChange()));
              },),
            ],
          ),
        ),
      ),
    );
  }
}
