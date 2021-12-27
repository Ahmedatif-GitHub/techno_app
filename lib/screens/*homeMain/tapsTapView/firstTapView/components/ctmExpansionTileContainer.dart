import 'package:flutter/material.dart';

import 'package:technoapp/constant/color.dart';
import 'package:technoapp/constant/themes.dart';
import 'package:technoapp/screens/*homeMain/custom/ctmContainerHome.dart';

class CustomExpansionTileContainer extends StatelessWidget {
  final String text;
  final Color color;
  final String title;
  final String nameAndNumber;
  final String days;
  final String time;
  Widget? leading;

  final List<Map<String, String>> customContainerHomeList;
  CustomExpansionTileContainer({
    Key? key,
    required this.text,
    required this.color,
    required this.title,
    required this.nameAndNumber,
    required this.days,
    required this.time,
    this.leading,
    required this.customContainerHomeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ExpansionTile(
      leading: leading,
      title: Text(text,
          textAlign: TextAlign.end,
          style: ThemeAppFonts.fontBold.copyWith(fontSize: 15)),
      children: [
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: customContainerHomeList.length,

            // itemCount: 3,
            itemBuilder: (context, i) {
              return CustomContainerHome(
                  color: color,
                  title: customContainerHomeList[i][title],
                  nameAndNumber: customContainerHomeList[i][nameAndNumber],
                  icon: Icon(Icons.alarm),
                  days: customContainerHomeList[i][days],
                  time: customContainerHomeList[i][time]);
            })
      ],
    ));
  }
}
