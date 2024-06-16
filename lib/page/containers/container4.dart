import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/widgets/commonCaontainer.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/widgets/commonContainerMobile.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return CommonContainerMobile(
        'FREE SOME COST',
        'Save cost \nfor you \nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        );
  }

  Widget desktopContainer() {
    return CommonContainer(
        'FREE SOME COST',
        'Save cost \nfor you \nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        true);
  }
}
