import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_button.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';


import 'confirmed_password.dart';


class PasswordChange extends StatelessWidget {
  const PasswordChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/IllustrationSuccess.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.deepPurple,
                    elevation: 20,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * .55,
                      width: MediaQuery.sizeOf(context).width,
                    ),
                  ),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/IllustrationSuccess.png",
                            height: 200, width: 200, fit: BoxFit.fill),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomText(
                          text: 'Password Changed',
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                        const CustomText(
                          text: 'Password change successfully.',
                          fontWeight: FontWeight.w300,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          text: 'Verify Account',
                          fontSize: 20,
                          callback: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ConfirmedPassword ()));
                          },
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
