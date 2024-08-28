import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.check_box_outlined),
      color: Colors.purple,
      ),
      const CustomText(text: 'you except all privacy policy',color: Colors.grey,),
    ],);
  }
}
