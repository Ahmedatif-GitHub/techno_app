import 'package:flutter/material.dart';

class CtmTextRowUnits extends StatelessWidget {
  final String text;
  final Color? color;
  const CtmTextRowUnits({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
