import 'package:flutter/material.dart';

import 'Widget/add_cart.dart';
import 'Widget/appbar.dart';
import 'Widget/container.dart';
import 'Widget/item_details.dart';
class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: AddToCart (),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          ItemAppbar(),
          ItemContainer(),
          ItemDetails(),
        ],),
      ),
    );
  }
}
