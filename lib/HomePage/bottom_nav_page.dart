
import 'package:flutter/material.dart';

import 'home_page.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens =[
    const Scaffold(),
    const Scaffold(),
    const HomePage(),
    const Scaffold(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;

          });
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.purpleAccent,
        child: Icon(
          Icons.home,
          size: 35,
          color: currentIndex == 2 ? Colors.white : Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo.shade900,
        elevation: 1,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: size.height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 35,
                  color: currentIndex == 0 ? Colors.purpleAccent : Colors.white,
                )),
            IconButton(
                onPressed: () {setState(() {
                  currentIndex = 1;
                });},
                icon: Icon(
                  Icons.favorite_border,
                  size: 35,
                  color: currentIndex == 1 ? Colors.purpleAccent : Colors.white,
                )),
            SizedBox(
              width: size.width * .03,
            ),
            IconButton(
                onPressed: () {setState(() {
                  currentIndex = 3;
                });},
                icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 35,
                    color: currentIndex == 3 ? Colors.purpleAccent : Colors.white,
                )),
            IconButton(
                onPressed: () {setState(() {
                  currentIndex = 4;
                });},
                icon: Icon(
                  Icons.person,
                  size: 35,
                  color: currentIndex == 4 ?Colors.purpleAccent : Colors.white,
                )),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
