
import 'package:flutter/material.dart';
import 'package:food_app_ui/splash_screen.dart';


void main() {
 runApp(const FoodAppUi());
}

class FoodAppUi extends StatelessWidget {
  const FoodAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
