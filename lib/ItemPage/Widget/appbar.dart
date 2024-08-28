import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

class ItemAppbar extends StatelessWidget {
  const ItemAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(padding: const EdgeInsets.all(10),
            backgroundColor: Colors.grey.shade200,
            ),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.indigo,
            )),
        const CustomText(text: "",),
      ],
    );
  }
}
