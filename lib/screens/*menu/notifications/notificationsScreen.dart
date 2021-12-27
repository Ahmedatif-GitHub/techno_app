import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '/*widgets/widgets.dart';

import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  GlobalKey<ScaffoldState> _notificationsKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _notificationsKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: ' الاشعارات'),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _notificationsKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.all(sizeH * 0.01),
          child: Column(
            children: [
              Container(
                height: sizeH * 0.05,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("هناك حقيقه مثبته منذ زمن طويل وهي ان المحتوي"),
                    Text("19 Aug"),
                  ],
                ),
              ),
              SizedBox(
                height: sizeH * 0.02,
              ),
              Container(
                 height: sizeH * 0.05,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("هناك حقيقه مثبته منذ زمن طويل وهي ان المحتوي"),
                    Text("18 Aug"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(),
    );
  }
}
