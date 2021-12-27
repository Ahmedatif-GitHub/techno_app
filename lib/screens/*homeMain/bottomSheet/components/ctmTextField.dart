import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

import 'package:technoapp/screens/*homeMain/showDataPicker/showDataPicker.dart';

class CtmContainerData extends StatelessWidget {
  final double sizeH;
  final double sizeV;

  final String title;
  final String data;
  const CtmContainerData({
    Key? key,
    required this.sizeH,
    required this.sizeV,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(sizeH * 0.01),
      child: Container(
        width: sizeV * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(title),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  color: kBlue ,
                  icon: Icon(
                    Icons.alarm,
                    size: 25,
                  ),
                  onPressed: () => showDatePickerContainer(context),
                ),
                SizedBox(
                  width: sizeV * 0.01,
                ),
                Text(data),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
