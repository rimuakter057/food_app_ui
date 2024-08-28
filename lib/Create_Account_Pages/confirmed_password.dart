import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/login_now_page.dart';


import 'Widget/Text_field.dart';
import 'Widget/custom_button.dart';

class ConfirmedPassword extends StatelessWidget {
  const ConfirmedPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          const SizedBox(height: 100,),
          CustomTextField(
            labelText: 'Email',
            hintText: 'Email****@mai.com',
            helperText: 'Enter your email',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            labelText: 'Password',
            hintText: 'Enter Password',
            helperText: 'Enter your Password',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            labelText: 'ConfirmPassword',
            hintText: 'Enter Password',
            helperText: 'Confirm your Password',
          ),
          const SizedBox(height: 20,),
          CustomButton(
            text: 'Submit',
            fontSize: 20,
            callback: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginNow()));
            },
          ),
        ],),
      ),
    );
  }
}
