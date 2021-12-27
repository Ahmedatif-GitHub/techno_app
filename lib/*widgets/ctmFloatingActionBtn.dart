import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  // final Function() onTapped;

  // const CustomFloatingActionBtn({Key? key, required this.onTapped}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kAmber,
      child: Icon(
        Icons.add,
        size: 25,
      ),
      onPressed: () 
      {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => OpenFloatBtu()));
    }
      
      // onPressed: () => openBottomSheet(context),
      // onPressed: onTapped,
    );
  }
}
