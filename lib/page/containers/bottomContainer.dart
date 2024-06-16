import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/widgets/commonCaontainer.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/widgets/commonContainerMobile.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      width: double.infinity,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Compnay",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color:  Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          textButton('About Us'),
          textButton('Contact Us'),
          textButton('Careers'),
          textButton('Privacy Policy'),
          textButton('Terms and Condition'),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Menu",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color:  Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          textButton('Exprience'),
          textButton('Marketing'),
          textButton('Content'),
          textButton('Commerce'),
          textButton('Partner'),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Social",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color:  Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          textButton('Instagram'),
          textButton('facebook'),
          textButton('Linkedin'),
          textButton('Twitter'),
          textButton('Dicard'),
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "   Compnay",
                style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w600,
                    color:  Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              textButton('About Us'),
              textButton('Contact Us'),
              textButton('Careers'),
              textButton('Privacy Policy'),
              textButton('Terms and Condition'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "   Menu",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              textButton('Exprience'),
              textButton('Marketing'),
              textButton('Content'),
              textButton('Commerce'),
              textButton('Partner'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "  Social",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              textButton('Instagram'),
              textButton('Facebook'),
              textButton('Linkedin'),
              textButton('Twitter'),
              textButton('Dicard'),
            ],
          )
        ],
      ),
    );
  }

  Widget textButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color:  Colors.black),
          )),
    );
  }
}
