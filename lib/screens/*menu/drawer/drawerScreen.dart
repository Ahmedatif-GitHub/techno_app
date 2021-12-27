import 'package:flutter/material.dart';
import 'package:technoapp/screens/*leads/leads/leadsScreen.dart';
import 'package:technoapp/screens/*menu/notifications/notificationsScreen.dart';
import 'package:technoapp/screens/*menu/projects/projectsScreen.dart';
import 'package:technoapp/screens/*menu/services/servicesScreen.dart';
import 'package:technoapp/screens/*menu/units/unitsScreen.dart';

import 'components/rowDrawer.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/menu0.png"),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    RowDrawer(
                        iconBtu: Icons.notifications,
                        textBtu: "الاشعارات",
                        onTapped: () {
                          print('done');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationsScreen()));
                        }),
                    SizedBox(height: sizeH * 0.03),
                    RowDrawer(
                        iconBtu: Icons.mark_chat_read,
                        textBtu: "المشروعات",
                        onTapped: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProjectsScreen()));
                        }),
                    SizedBox(height: sizeH * 0.03),
                    RowDrawer(
                        iconBtu: Icons.circle,
                        textBtu: "الوحدات",
                        onTapped: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UnitsScreen()));
                        }),
                    SizedBox(height: sizeH * 0.03),
                    RowDrawer(
                        iconBtu: Icons.clean_hands,
                        textBtu: "الخدمات",
                        onTapped: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Services()));
                        }),
                    SizedBox(height: sizeH * 0.03),
                    RowDrawer(
                      iconBtu: Icons.calendar_today,
                      textBtu: "التقويم",
                      onTapped: () {},
                    ),
                    SizedBox(height:sizeH * 0.03),
                    RowDrawer(
                      iconBtu: Icons.person,
                      textBtu: "اداره العملاء",
                      onTapped: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LeadsScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Center(
                child: Container(
                    height: sizeH * 0.05,
                    width: sizeV * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(sizeH * 0.015),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "تسجيل الخروج",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              SizedBox(
                height: sizeH * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: sizeH * 0.02),
                    child: Text("Powered by Technomasr"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: sizeH * 0.01),
                    child: Text("V 1.0"),
                  ),
                ],
              ),
              SizedBox(
                height: sizeH * 0.01,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
