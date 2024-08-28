import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.3,
      width: MediaQuery.sizeOf(context).width,
      child: Image.asset("assets/images/image1.png",fit: BoxFit.fill,),
    );
  }
}
