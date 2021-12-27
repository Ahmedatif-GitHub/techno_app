import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class CustomRowProjects extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function() onTapped;
  const CustomRowProjects({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.all(sizeH * 0.02),
          child: InkWell(
            onTap: onTapped,
            child: Container(
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(fontSize: 15, color: kBlack38),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: sizeH * 0.01, right: sizeH * 0.01),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
