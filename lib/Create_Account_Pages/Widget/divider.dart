import 'package:flutter/material.dart';

import 'custom_text.dart';


class Divider extends StatelessWidget {
  const Divider({super.key, required Color color, required int thickness});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        height: 50,
        width: 100,
        child: Divider(color: Colors.grey.shade500,
          thickness: 1,
        ),
      ),
      const CustomText(text: 'or',),
      SizedBox(
        height: 50,
        width: 100,
        child: Divider(color: Colors.grey.shade500,
          thickness: 1,
        ),
      ) ,
    ],
    );
  }
}
