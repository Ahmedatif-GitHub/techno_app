import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*homeMain/custom/ctmContainerHomeTask.dart';
import 'package:technoapp/screens/*homeMain/detailAndEdit/detailAndEdit.dart';

class SecondTapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: kGrey300,
        child: Column(
          children: [
            CustomContainerHomeTask(
                color: kRed,
                title: "اجتماع مناقشه العرض المقدم للعميل ",
                nameAndNumber: " ا/احمد علي 01234567887  ",
                days: "Tomorrow",
                timeDuedate: "5:00am ",
                time: "7:00am ",
                onTapped: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailAndEdit()));
                }),
            SizedBox(
              height: sizeH * 0.01,
            ),
            CustomContainerHomeTask(
              color: kYellow,
              title: "اجتماع مناقشه العرض المقدم للعميل ",
              nameAndNumber: " ا/احمد علي 01234567887  ",
              days: "Today",
              timeDuedate: "9:00am ",
              time: "11:00am ",
              onTapped: () {},
            ),
          ],
        ),
      ),
    );
  }
}
