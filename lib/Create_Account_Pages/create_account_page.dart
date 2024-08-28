import 'package:flutter/material.dart';


import '../HomePage/bottom_nav_page.dart';
import 'Widget/Text_field.dart';
import 'Widget/custom_button.dart';
import 'Widget/custom_text.dart';
import 'Widget/rich_text.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                text: 'Create your FoodApp Account',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const CustomText(text: "Enter User name",
                  fontWeight: FontWeight.w300,
                ),
                  const SizedBox(height: 3,),
                  CustomTextField(
                    labelText: 'User name',
                    hintText: 'user name',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(text: "Enter Email or Mobile number",
                  fontWeight: FontWeight.w300,
                  ),
                  const SizedBox(height: 3,),
                  CustomTextField(
                    labelText: 'Email or number',
                    hintText: 'Email***@gmail.com or 01***',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(text: "Enter Password",
                    fontWeight: FontWeight.w300,
                  ),
                  const SizedBox(height: 3,),
                  CustomTextField(
                    labelText: 'Password',
                    hintText: 'a1B%********',
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
               CustomButton(
                  text: 'Sign Up',
                  fontSize: 20,
                  callback: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
                  },
                ),
               const SizedBox(height: 20,),
             const Divider(
              thickness: 1,
             color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              const RichTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
