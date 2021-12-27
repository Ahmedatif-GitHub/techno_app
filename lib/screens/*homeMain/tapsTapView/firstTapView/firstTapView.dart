import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*homeMain/bottomSheet/openBottomSheet.dart';
import 'components/ctmExpansionTileContainer.dart';

class FirstTapView extends StatelessWidget {
  var customContainerHomeList = [
    {
      'title': 'اجتماع مناقشه العرض المقدم للعميل ',
      'nameAndNumber': '  ا/احمد علي 01234567887 ',
      'days': 'Today',
      'time': ' 11:00am',
    },
    {
      'title': 'اجتماع مناقشه العرض المقدم للعميل ',
      'nameAndNumber': '  ا/احمد علي 01234567887 ',
      'days': 'Tomorrow',
      'time': ' 10:00am',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomExpansionTileContainer(
              leading: IconButton(
                onPressed: () => openBottomSheet(context),
                icon: Icon(Icons.add_circle_outline_rounded),
              ),
              text: 'اليوم (3)',
              color: kRed,
              title: 'title',
              nameAndNumber: 'nameAndNumber',
              days: 'days',
              time: 'time',
              customContainerHomeList: customContainerHomeList,
            ),
            SizedBox(
              height: sizeH * 0.01,
            ),
            CustomExpansionTileContainer(
              text: 'مهام متاخره (4) ',
              color: kAmber,
              title: 'title',
              nameAndNumber: 'nameAndNumber',
              days: 'days',
              time: 'time',
              customContainerHomeList: customContainerHomeList,
            ),
          ],
        ),
      ),
    );
  }
}
