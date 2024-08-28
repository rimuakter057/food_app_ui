import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.borderSide,
      this.border,
      this.borderRadius,
      this.helperText,
      this.hintText,
      required this.labelText});

  final String labelText;
  final String? hintText;
  final String? helperText;
  final OutlineInputBorder? border;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText ?? '',
          helperText: helperText ?? '',
          border: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(5),
              borderSide: borderSide ?? const BorderSide(color: Colors.black)),
          errorBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(5),
            borderSide: borderSide ?? const BorderSide(color: Colors.red),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  borderSide ?? const BorderSide(color: Colors.deepPurple))),
    );
  }
}
