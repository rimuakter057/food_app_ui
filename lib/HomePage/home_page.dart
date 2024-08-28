import 'package:flutter/material.dart';
import 'package:food_app_ui/Create_Account_Pages/Widget/custom_text.dart';

import 'Widget/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: BazierCurve(),
              child: Container(
                height: size.height * .25,
                color: Colors.indigo.shade900,
              ),
            ),
            Positioned(
                bottom: 0,
                left: size.width * .32,
                child: const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(
                    'assets/images/image1.png',
                  ),
                )),
            Positioned(
              top: 35,
              left: size.width * .3,
              child: const CustomText(
                text: "Choose your favorite food",
                color: Colors.white70,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Category",
                color: Colors.indigo.shade900,
                fontWeight: FontWeight.w400,
              ),
              CustomText(
                text: "view all",
                color: Colors.indigo.shade900,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * .17,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/image1.png"),
                        CustomText(
                          text: "Burger",
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: size.height * .15,
            width: size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: PageView(
                //   onPageChanged: widget.onChange,
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                physics: ClampingScrollPhysics(),
                children: [
                  Image.asset(
                    'assets/images/banner1.jfif',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/banner2.jfif',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/banner3.jfif',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/banner4.jfif',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "all item",
                color: Colors.indigo.shade900,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: "view all",
                color: Colors.indigo.shade900,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return const CardWidget();
                }),
          ),
        )
      ],
    ));
  }
}

class BazierCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.8,
      size.width * 0.45,
      size.height * 0.5,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 1,
      size.width,
      size.height * 0.75,
    );

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
