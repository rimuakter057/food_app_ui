import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Form(child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      SizedBox(
        height: size.height*.068,
        width:size.width*.15,
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(width: 2,color: Colors.grey)
            )
          ),
         keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
          ],

        ),
      ),
      SizedBox(
        height: size.height*.068,
        width:size.width*.15,
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(width: 2,color: Colors.grey)
              )
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],

        ),
      ),
      SizedBox(
        height: size.height*.068,
        width:size.width*.15,
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(width: 2,color: Colors.grey)
              )
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],

        ),
      ),
      SizedBox(
        height: size.height*.068,
        width:size.width*.15,
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(width: 2,color: Colors.grey)
              )
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],

        ),
      ),
    ],)

    );
  }
}
