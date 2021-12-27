import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';
import 'package:technoapp/screens/*menu/servicesDetails.dart/servicesDetailsScreen.dart';


import 'components/ctmContainer.dart';

class SubServices extends StatelessWidget {
  GlobalKey<ScaffoldState> _subServicesKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _subServicesKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: "تصميم مواقع"),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _subServicesKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(sizeH * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomContainer(
                color: kYellow100,
                text: "مجله ووردبريس",
                onTapped: () {},
              ),
              SizedBox(width: 7),
              CustomContainer(
                color: kBlue100,
                text: "تصميم موقع تعريفي للشركات",
                onTapped: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ServiceDetails()));
                },
              ),
            ]),
            SizedBox(height: sizeH * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomContainer(
                  color: kPurple100,
                  text: "موقع اكاديميه تدريب",
                  onTapped: () {},
                ),
                SizedBox(width: sizeV * 0.01),
                CustomContainer(
                  color: kOrange800,
                  text: " تصميم موقع عقارات ",
                  onTapped: () {},
                ),
              ],
            ),
            SizedBox(height: sizeH * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomContainer(
                  color: kGreen200,
                  text: " مثال علي خدمه",
                  onTapped: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(
        
      ),
    );
  }
}
