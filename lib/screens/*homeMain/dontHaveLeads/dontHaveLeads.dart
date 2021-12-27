// import 'package:crm_app/screens/*homeMain/custom/ctmTap.dart';

import 'package:technoapp/*widgets/ctmTitleAppBar.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '../custom/widgetsHome.dart';

import 'package:flutter/material.dart';

class DontHaveLeads extends StatefulWidget {
  @override
  State<DontHaveLeads> createState() => _DontHaveLeadsState();
}

class _DontHaveLeadsState extends State<DontHaveLeads> {
  GlobalKey<ScaffoldState> _dontHaveLeadsKey = GlobalKey<ScaffoldState>();
  bool _isChecked = true;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _dontHaveLeadsKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTitleAppbar(title: 'الرئيسيه'),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _dontHaveLeadsKey),
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
          width: 350,
          height: 350,
          child: Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/DontHaveLeads.png"),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "اضافه مهمه جديدة",
                    style: TextStyle(
                      color: Colors.white,
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
        height: 75,
        child: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
