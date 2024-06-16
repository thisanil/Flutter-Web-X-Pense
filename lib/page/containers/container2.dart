import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
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
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFFF4066), Color(0xFFFFF16A)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: h!,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(dashbord), fit: BoxFit.contain)),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
                companyLogo(linkedin),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFFF4066), Color(0xFFFFF16A)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(dashbord),
                      // fit: BoxFit.contain
                    )),
                  ))
            ],
          )),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
                companyLogo(linkedin),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: w!/10,
      height: 36,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
