import 'package:flutter/material.dart';
import 'package:web_app/page/home.dart';
import 'package:web_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Pense',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.primaryColor,
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

