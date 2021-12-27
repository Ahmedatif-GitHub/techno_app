import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';
import 'package:technoapp/screens/*menu/unit/unitScreen.dart';

import 'components/ctmContainerUnits.dart';
import 'components/ctmTextRowUnits.dart';


class UnitsScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _unitsKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    
      double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _unitsKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: " مشروع العلا مصر"),
        elevation: 0.5,
        leading: CustomLeadingAppBar(scaffoldKey: _unitsKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: kBlack12,
          child: Column(
            children: [
              Container(
                color: kWhite,
                child: Padding(
                  padding: EdgeInsets.all(sizeH * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Text(
                        '10 وحدات متاحه من 20 وحده',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CtmTextRowUnits(
                              text: "4 وحدات سكنيه", color: kGreen800),
                          CtmTextRowUnits(
                              text: " 3 وحدات اداريه ",
                              color: kBlue300),
                          CtmTextRowUnits(
                              text: "3 وحدات تجاريه", color: kBlue900),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: sizeH * 0.01),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UnitScreen()));
                },
                child: Container(
                  color: kWhite,
                  child: Padding(
                    padding:  EdgeInsets.all(sizeH * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "وحده4 مساحه35 متر ع الشارع الرئيسي ",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: sizeH * 0.01),
                        Row(
                          children: [
                            CtmContainerUnits(
                              text: 'سكني',
                              color: kGreen,
                            ),
                            SizedBox(width: sizeV * 0.01),
                            CtmContainerUnits(
                              text: '5541',
                              color: kOrange,
                            )
                          ],
                        ),
                        SizedBox(height: sizeH * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              Icon(Icons.crop_square),
                              SizedBox(width: sizeH * 0.01),
                              Text("م180"),
                            ]),
                            Row(children: [
                              Icon(Icons.home),
                              SizedBox(width: sizeV * 0.01),
                              Text("4 غرف "),
                            ]),
                            Row(children: [
                              Icon(Icons.bathtub_outlined),
                              SizedBox(width: sizeV * 0.01),
                              Text("2حمام"),
                            ]),
                          ],
                        ),
                        SizedBox(height: sizeH * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              Icon(Icons.houseboat),
                              SizedBox(width: sizeV * 0.01),
                              Text("الطابق الرابع"),
                            ]),
                            Row(children: [
                              Icon(Icons.pool),
                              SizedBox(width: sizeV * 0.01),
                              Text("حمام السباحه"),
                            ]),
                          ],
                        ),
                      ],
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



