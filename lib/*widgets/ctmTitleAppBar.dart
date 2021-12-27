import 'package:flutter/material.dart';
import 'package:technoapp/constant/themes.dart';

class CustomTitleAppbar extends StatelessWidget {
  final String title;

  const CustomTitleAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      title,
      style: ThemeAppFonts.fontBold,
    ));
  }
}
