import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w!/10,vertical: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image1.png"),
                    fit: BoxFit.contain)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Track your Expenses to \nSave Money",
                  style: TextStyle(
                      fontSize: w! / 10,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        foregroundColor: Colors.black,
                        backgroundColor: AppColor.secondryColor,
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down),
                      label: const Text("Try free Demo")),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "- Web,IOs and Android",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track your \nExpenses to \nSave Money",
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            foregroundColor: Colors.black,
                            backgroundColor: AppColor.secondryColor,
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down),
                          label: const Text("Try free Demo")),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "- Web,IOs and Android",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image1.png"),
                    fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }
}
