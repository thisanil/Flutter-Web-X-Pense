import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';

Widget CommonContainer(String s1, s2, s3, image, bool imageleft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        imageleft
            ? Expanded(
                child: Container(
                height: 530,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ))
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageleft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                s2,
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                s3,
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(onPressed: () {}, icon: Icon(Icons.arrow_forward,size: 20,color: AppColor.secondryColor,), 
              label: Text(
                "Learn More",
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: TextStyle(color: AppColor.secondryColor, fontSize: 16),
              ),)
            ],
          ),
        ),
        imageleft
            ? Container()
            : Expanded(
                child: Container(
                height: 530,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ))
      ],
    ),
  );
}
