import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.mobileController,
  });

  final TextEditingController mobileController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple.shade300),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: TextField(
            controller: mobileController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border:InputBorder.none,
                hintText: 'Enter mobile number / Email',
                hintStyle: TextStyle(color: Colors.white)

            ),
          ),
        ),
      ),
    );
  }
}
