import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';
import 'package:technoapp/screens/*menu/units/unitsScreen.dart';

import 'components/ctmRowProjects.dart';

class ProjectsScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _projectsKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _projectsKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTitleAppbar(title: " المشروعات"),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _projectsKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          CustomRowProjects(
            title: "اسم المشروع",
            subTitle: '١٢ وحده',
            onTapped: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UnitsScreen()));
            },
          ),
          Divider(
            height: 2,
          ),
          CustomRowProjects(
            title: "مشروع كابتل سيتي",
            subTitle: "١٠ وحدات",
            onTapped: () {},
          ),
        ],
      ),
      floatingActionButton: CustomFloatingActionBtn(),
    );
  }
}
