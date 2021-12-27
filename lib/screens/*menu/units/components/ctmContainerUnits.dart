import 'package:flutter/material.dart';

class CtmContainerUnits extends StatelessWidget {
  final String text;
  final Color? color;
  const CtmContainerUnits({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
          double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Container(
      height: sizeH * 0.03,
      width: sizeV * 0.12,
      color: color,
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}