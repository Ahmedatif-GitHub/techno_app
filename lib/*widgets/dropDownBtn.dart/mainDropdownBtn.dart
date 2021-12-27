import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class MainDropdownButtonWidget extends StatefulWidget {
  const MainDropdownButtonWidget({Key? key}) : super(key: key);

  @override
  State<MainDropdownButtonWidget> createState() => _MainDropdownButtonWidget();
}

class _MainDropdownButtonWidget extends State<MainDropdownButtonWidget> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
           double sizeH = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
            color: kGrey300,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: sizeH * 0.06,
        child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down_sharp),
          elevation: 5,
          style: const TextStyle(color: Colors.black),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Office', 'Company']
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
