import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/widgets/elevatedButton.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Icon(Icons.menu), navLogo()],
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Feature"),
              navButton("About us"),
              navButton("pricing"),
              navButton("Feedback"),
            ],
          ),
          Button(text: 'Request a Demo', onTap: () {  },)
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
          )),
    );
  }

  Widget navLogo() {
    return Container(
      width: 150,
      height: 70,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage(logo), fit: BoxFit.contain)),
    );
  }
}
