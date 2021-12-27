// import 'package:crm_app/screens/*homeMain/custom/ctmTap.dart';

import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*auth/components/widgetsAuth.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '../custom/widgetsHome.dart';

import 'package:flutter/material.dart';

class DontHaveTasks extends StatefulWidget {
  @override
  State<DontHaveTasks> createState() => _DontHaveTasksState();
}

class _DontHaveTasksState extends State<DontHaveTasks> {
  GlobalKey<ScaffoldState> _dontHaveTasksKey = GlobalKey<ScaffoldState>();
  bool _isChecked = true;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
       double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _dontHaveTasksKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTitleAppbar(title: 'الرئيسيه'),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _dontHaveTasksKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
        bottom: customBottomTapBar(
            context: context,
            ischecked: _isChecked,
            onTapList: () {
              print("قائمه العملاء");
              setState(() => _isChecked = false);
            },
            onTapTasks: () {
              print("مهامي");
              setState(() => _isChecked = true);
            }),
      ),
      body: Center(
        child: Container(
          width: sizeV * 0.3,
          height: sizeH * 0.3,
          child: Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/DontHaveTasks.png"),
              ),
              Container(
                height: sizeH * 0.025,
                width: sizeV * 0.25,
                decoration: BoxDecoration(
                  color: kBlue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "اضافه مهمه جديدة",
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

      //
      floatingActionButton: CustomFloatingActionBtn(),

      bottomNavigationBar: SizedBox(
        height: sizeH * 0.075,
        child: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
