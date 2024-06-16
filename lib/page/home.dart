import 'package:flutter/material.dart';
import 'package:web_app/page/containers/bottomContainer.dart';
import 'package:web_app/page/containers/container2.dart';
import 'package:web_app/page/containers/container3.dart';
import 'package:web_app/page/containers/container4.dart';
import 'package:web_app/page/containers/container5.dart';
import 'package:web_app/page/containers/contanier1.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               NavBar(),
               Container1(),
               Container2(),
               Container3(),
               Container4(),
               Container5(),
               BottomContainer()
            ],
          ),
        ),
      ),
    );
  }
}
