import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '/*widgets/widgets.dart';



import 'package:flutter/material.dart';

class DontHavNotiScreen extends StatefulWidget {
  DontHavNotiScreen({Key? key}) : super(key: key);

  @override
  _DontHavNotiScreenState createState() => _DontHavNotiScreenState();
}

class _DontHavNotiScreenState extends State<DontHavNotiScreen> {
  GlobalKey<ScaffoldState> _dontHaveNotiKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
      double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _dontHaveNotiKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: ' الاشعارات'),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _dontHaveNotiKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: sizeV * 0.3,
          height: sizeH * 0.3,
          child: Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/DontHaveNotifications.png"),
              ),
              Container(
                height: sizeH * 0.03,
                width: sizeV * 0.3,
                decoration: BoxDecoration(
                  color: kBlue,
                  borderRadius: BorderRadius.circular(sizeH * 0.02),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    " لا يوجد اشعارات حتي الان",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 25,
                      // fontFamily: "JannaLT-Bold",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(
        
      ),
    );
  }
}
