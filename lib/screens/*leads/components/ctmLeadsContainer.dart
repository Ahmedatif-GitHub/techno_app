import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/constant/themes.dart';

class CustomLeadsContainer extends StatelessWidget {
  final String className;
  final Color? classColor;
  final String userName;
  final String email;
  final String categoryName;
  final Color? categoryContainerColor;
  final String status;
  final Color? statusColor;
  final String number;
  final Function() onTapped;
  const CustomLeadsContainer({
    Key? key,
    required this.className,
    this.classColor,
    required this.userName,
    required this.email,
    required this.categoryName,
    this.categoryContainerColor,
    required this.status,
    this.statusColor,
    required this.number,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTapped,
      child: Container(
        height: sizeH * 0.2,
        color: kWhite,
        child: Padding(
          padding:  EdgeInsets.all(sizeH * 0.02),
          child: Container(
            color: kWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: sizeH * 0.05,
                          width: sizeV * 0.1,
                          decoration: BoxDecoration(
                              color: classColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(sizeH * 0.05))),
                          child: Center(
                              child: Text(
                            className,
                            style: ThemeAppFonts.fontBold.copyWith(color: kWhite),
                          )),
                        ),
                        SizedBox(
                          width: sizeV * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName),
                            SizedBox(
                              height: sizeH * 0.02,
                            ),
                            Text(email),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: sizeH * 0.02),
                    Row(
                      children: [
                        Container(
                          
                          height: sizeH * 0.04,
                          width: sizeV * 0.4,
                          color: categoryContainerColor,
                          child: Center(child: Text(categoryName)),
                        ),
                        SizedBox(width: sizeV * 0.02),
                        Container(
                          height: sizeH * 0.04,
                          width: sizeV * 0.14,
                          color: statusColor,
                          child: Center(child: Text(status)),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(number),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
