import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_button.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';
import 'package:food_app_ui/Create_Account_Pages/verification_page.dart';

import 'Widget/container_textfield_widget.dart';

class SendOtp extends StatelessWidget {
  SendOtp({super.key});
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              const CustomText(
                text: "Forgot Password?",color: Colors.deepPurple,fontSize: 20,
              ),
              const SizedBox(height: 20,),
              const CustomText(
                text: "Enter your Email address or Mobile number and we'll ",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              const CustomText(
                text: "send you a confirmation code to reset your password ",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              const SizedBox(height: 20,),
              const CustomText(
                text: "Mobile number or Email",
              ),
              const SizedBox(height: 10,),
              ContainerWidget(mobileController: mobileController),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
              //  color: Colors.deepPurple.shade300,
                text: 'Continue',
                fontSize: 25,
                borderRadius: BorderRadius.circular(10),
                callback: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerificationPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
