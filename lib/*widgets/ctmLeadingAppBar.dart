import 'package:flutter/material.dart';

class CustomLeadingAppBar extends StatelessWidget {
  const CustomLeadingAppBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: sizeH * 0.01),
      padding: EdgeInsets.all(sizeH * 0.01),
      child: IconButton(
        icon: Image.asset('assets/images/Vector.png'),
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
      ),
    );
  }
}
