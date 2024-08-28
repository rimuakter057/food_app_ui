import 'package:flutter/material.dart';


import 'Widget/button_option.dart';
import 'Widget/custom_button.dart';
import 'Widget/custom_text.dart';
import 'choose_gmaiil_page.dart';
import 'login_page.dart';

class SignupOption extends StatelessWidget {
  const SignupOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const CustomText(
                fontWeight: FontWeight.w800,
                text: 'FoodApp',
                fontSize: 40,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(
                text: 'Create a FoodApp Account',
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                text: 'Login with email',
                callback: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const LoginPage ()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                  icon: const Icon(
                    Icons.apple_outlined,
                    color: Colors.white,
                  ),
                  text: 'Login  with Apple',
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  }),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                  icon: const Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                  ),
                  text: 'Login with Facebook',
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  }),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.white,
                ),
                text: 'Login  with Google',
                callback: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ChooseGmail()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(),
              const SizedBox(
                height: 25,
              ),
              ButtonOption(),
            ],
          ),
        ),
      ),
    );
  }
}
