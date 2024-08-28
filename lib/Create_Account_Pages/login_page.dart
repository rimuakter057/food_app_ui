import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/send_otp_page.dart';
import '../HomePage/bottom_nav_page.dart';
import 'Widget/Text_field.dart';
import 'Widget/custom_button.dart';
import 'Widget/custom_text.dart';
import 'Widget/rich_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List <bool> isSelected =[
    false,
    false,
  ];
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
                text: 'Login your FoodApp Account',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 20,
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SendOtp()));
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*.4,
                        height: MediaQuery.sizeOf(context).height*.05,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)

                        ),

                        child:   const Center(
                          child: CustomText(
                            text: 'forget password',
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple,

                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                text: 'Login',
                fontSize: 20,
                callback: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
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
