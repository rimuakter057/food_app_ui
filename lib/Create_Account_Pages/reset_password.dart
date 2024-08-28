import 'package:flutter/material.dart';

import 'Widget/custom_appbar.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        CustomAppBar(),
      ],),
    );
  }
}
