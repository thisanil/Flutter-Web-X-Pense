import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const Button({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: Colors.black,
            backgroundColor: AppColor.secondryColor,
          ),
          onPressed: onTap,
          
          child: Text(text)),
    );
  }
}
