
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/subServices/subServicesScreen.dart';

import '/*widgets/widgets.dart';

import 'package:flutter/material.dart';

import '../drawer/drawerScreen.dart';
import 'components/ctmRowServices.dart';

class Services extends StatefulWidget {
  Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  GlobalKey<ScaffoldState> _servicesKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _servicesKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: 'الخدمات'),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _servicesKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(sizeH * 0.01),
        child: Column(
          children: [
            CustomRowServices(
                title: "تصميم مواقع",
                text: "١٠ خدمات فرعيه",
                onTapped: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SubServices()));
                },
                ),
            Divider(
              height: sizeH * 0.01,
            ),
            CustomRowServices(
              title: " برامج حسابات",
              text: "١٠ خدمه فرعيه",
              onTapped: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(
       
      ),
    );
  }
}
