import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class RowDrawer extends StatelessWidget {
  final IconData iconBtu;
  final String textBtu;
  final Function() onTapped;
  const RowDrawer({
    Key? key,
    required this.iconBtu,
    required this.textBtu,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeV = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTapped,
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: sizeV * 0.03),
          Icon(iconBtu, color: kBlue),
          SizedBox(width: sizeV * 0.03),
          Text(
            textBtu,
            style: TextStyle(color: kBlue, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
