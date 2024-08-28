import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.sizeOf(context);
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                padding: const EdgeInsets.all(10)),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        SizedBox(width: size.width*.2,),
        CustomText(
          text: 'Reset',
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ],
    );
  }
}
