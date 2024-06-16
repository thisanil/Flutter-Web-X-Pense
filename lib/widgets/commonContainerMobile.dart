import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';

Widget CommonContainerMobile(
  String s1,
  s2,
  s3,
  image,
) {
  return Container(
    // margin: EdgeInsets.symmetric(horizontal: w!/10,vertical: 20),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                s1.toUpperCase(),
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s2,
                style: TextStyle(
                    fontSize: w! / 10,
                    fontWeight: FontWeight.bold,
                    height: 1.2),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                s3,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
               TextButton.icon(onPressed: () {}, icon: Icon(Icons.arrow_forward,size: 20,color: AppColor.secondryColor,), 
              label: Text(
                "Learn More",
                textAlign: TextAlign.left,
                style: TextStyle(color: AppColor.secondryColor, fontSize: 16),
              ),)
            ],
          ),
        ),
      ],
    ),
  );
}
