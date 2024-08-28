import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

import '../../ItemPage/item_page.dart';



class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context)=>const ItemPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
            shape: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/image1.png',
                    height: 90,
                    width: 150,
                    fit: BoxFit.cover,
                  ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(children: [
                    CustomText(
                      text: "Burger",
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "${400} tk",
                      color: Colors.indigo.shade900,
                    ),
                  ],),
                )
                ],
              ),
            )),
      ),
    );
  }
}
