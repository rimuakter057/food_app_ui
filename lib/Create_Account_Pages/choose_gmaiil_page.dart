import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';
import 'package:food_app_ui/Create_Account_Pages/use_another_gmail.dart';
import 'package:food_app_ui/HomePage/home_page.dart';

import 'gmail_login.dart';

class ChooseGmail extends StatelessWidget {
  const ChooseGmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              fontSize: 40,
              color: Colors.deepPurple,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomText(
              text: "Choose an account to continue to open FoodApp",
              color: Colors.grey,
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const GmailLogin ()));
              },
              child: const ListTile(
                  leading: Icon(
                    Icons.person_outlined,
                    color: Colors.deepPurple,
                  ),
                  title: Text("Rimu"),
                  subtitle: Text("rimu***@gmail.com"),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const UseAnotherGmail()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.person_outlined,
                  color: Colors.deepPurple,
                ),
                title: Text("Use another account"),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}


