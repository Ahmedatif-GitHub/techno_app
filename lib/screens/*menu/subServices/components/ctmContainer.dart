import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final String text;
    final Function() onTapped;
  const CustomContainer({
    Key? key,
    this.color,
    required this.text,
    required this.onTapped,
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Container(
      color: color,
      child: Padding(
        padding:  EdgeInsets.all(sizeH * 0.01),
        child:
         TextButton(
           child: Text(text),
           onPressed:  onTapped,
         ),
      ),
    );
  }
}
