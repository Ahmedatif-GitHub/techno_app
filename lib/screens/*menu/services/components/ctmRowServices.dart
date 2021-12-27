
import 'package:flutter/material.dart';

class CustomRowServices extends StatelessWidget {
  final String title;
  final String text;
  final Function() onTapped;
  const CustomRowServices({
    Key? key,
    required this.title,
    required this.text,
    required this.onTapped,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTapped,

      child: Padding(
        padding:  EdgeInsets.all(sizeH* 0.01),
        child: Container(
          height: sizeH * 0.08,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 25),
                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: sizeH * 0.01, right: sizeH * 0.01),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(width:sizeV * 0.01),
                    Text(text,
                        style: TextStyle(color: Colors.black38, fontSize: 15)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
