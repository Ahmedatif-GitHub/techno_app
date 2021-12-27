import 'package:flutter/material.dart';
import 'package:technoapp/screens/*homeMain/home/homeScreen.dart';

import 'pallete.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Container(
      height: sizeH * 0.08,
      width: sizeV * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(sizeH * 0.1),
        color: Colors.blue[700],
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        child: Text(
          buttonName,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
