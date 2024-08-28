import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   const CustomText({super.key, this.text,
     this.color,
     this.fontWeight,
     this.overflow,
     this.fontSize,
     this.maxLine,
   });
   final String? text;
   final double? fontSize;
   final FontWeight ?fontWeight;
   final Color? color;
   final TextOverflow ?overflow;
   final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return Text(text??"FoodApp",style: TextStyle(
      fontSize: fontSize??16,
      fontWeight: fontWeight?? FontWeight.w700,
      color: color?? Colors.black,
    ),
    overflow: TextOverflow.ellipsis,
      maxLines:maxLine??20 ,
    );
  }
}
