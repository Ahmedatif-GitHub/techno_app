
import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String textField;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.textField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding:  EdgeInsets.all(sizeH * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(height: sizeH * 0.01),
            Container(
              decoration: BoxDecoration(
                  color: kGrey300,
                  borderRadius: BorderRadius.all(Radius.circular(sizeH * 0.01))),
              height: sizeH * 0.055,
              child: Padding(
                padding:  EdgeInsets.all(sizeH * 0.01),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: textField,
                        hintStyle: TextStyle(color: kBlack38)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
