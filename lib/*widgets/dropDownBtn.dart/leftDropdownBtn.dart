import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class LeftDropdownButtonWidget extends StatefulWidget {
  const LeftDropdownButtonWidget({Key? key}) : super(key: key);

  @override
  State<LeftDropdownButtonWidget> createState() => _LeftDropdownButtonWidget();
}

class _LeftDropdownButtonWidget extends State<LeftDropdownButtonWidget> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
      double sizeH = MediaQuery.of(context).size.height;
        double sizeV = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: kGrey300,
            borderRadius: BorderRadius.all(Radius.circular(sizeH * 0.01))),
        height: sizeH * 0.07,
        child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down_sharp),
          elevation: 5,
          style: const TextStyle(color: kBlack),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Lead', 'User']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding:  EdgeInsets.all(sizeH * 0.01),
                child: Center(child: Text(value)),
              ),
            );
          }).toList(),
        ))
        // ),
        );
  }
}
