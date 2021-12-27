import 'package:flutter/material.dart';

class CustomTap extends StatelessWidget {
  final String? text;
  final Color? color, textColor;
  final void Function()? onTap;
  const CustomTap({this.text, this.color, this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: sizeH * 0.4,
        width: sizeV * 0.45,
        margin: EdgeInsets.symmetric(vertical: sizeV * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(sizeH * 0.01),
          color: color ?? Theme.of(context).primaryColor,
        ),
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              // fontFamily: "JannaLT-Bold",
            ),
          ),
        ),
      ),
    );
  }
}
