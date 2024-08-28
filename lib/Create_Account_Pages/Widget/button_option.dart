import 'package:flutter/material.dart';

class ButtonOption extends StatelessWidget {
  const ButtonOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook_outlined,
                  color: Colors.lightBlueAccent.shade700,size: 35,
                ),

              ),
            )),
        Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.apple_outlined,
                  color: Colors.black,size: 35,
                ),

              ),
            )),
        Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Image.asset('assets/images/google_button.png',height: 30,width: 30,),
       /*     Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook_outlined,
                  color: Colors.lightBlueAccent.shade700,size: 35,
                ),

              ),
            ),*/
        ),
      ],
    );
  }
}
