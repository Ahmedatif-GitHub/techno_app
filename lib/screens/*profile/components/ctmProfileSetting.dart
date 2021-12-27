import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

import 'ctmProfileBtnSheet.dart';

CustomProfileSetting(
  BuildContext context,
  String title,
  String text,
  Icon iconBtu,
) {
  double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
  return Padding(
    padding:  EdgeInsets.symmetric(vertical: sizeV * 0.01, horizontal: sizeH * 0.02),
    child: Builder(builder: (context) {
      return TextButton(
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: sizeH * 0.01),
                  child: Text(title),
                ),
                SizedBox(width: sizeV * 0.01),
                Container(child: iconBtu),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: sizeH * 0.01, right: sizeH * 0.01),
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 5),
                Text(text, style: TextStyle(color: kBlack, fontSize: 15)),
              ],
            ),
          ],
        ),
        onPressed: () => CustomProfileBtnSheet(context, title, text, iconBtu),
      );
    }),
  );
}
