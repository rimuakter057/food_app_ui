import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Beef Burger",
              color: Colors.indigo.shade900,fontSize: 20,
            ),
            CustomText(
              text: "\$${7}",
              color: Colors.indigo.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )
          ],
        ),
        const Row(
          children: [
            Icon(Icons.star,color: Colors.deepOrange,size: 30,),
            Icon(Icons.star,color: Colors.deepOrange,size: 30,),
            Icon(Icons.star,color: Colors.deepOrange,size: 30,),

          ],
        ),
      const CustomText(text: "Description",color: Colors.black,fontSize: 30,),
        const SizedBox(height: 10,),
        const CustomText(text: '''A burger, short for "hamburger, is a popular fast food
typically consists of a cooked patty of ground meat, usually beef, 
placed inside a sliced bread roll or bun. The patty can also be 
placed inside a sliced bread roll or bun. The patty can also be 
placed inside a sliced bread roll or bun. The patty can also be 
made from other types of meat, like chicken, turkey, or even plant-based 
alternatives for vegetarians and vegans.''',color: Colors.grey,),
      ],
    );
  }
}
