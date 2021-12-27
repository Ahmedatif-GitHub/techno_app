import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '../archiveLeadsAlert/archiveLeadsAlert.dart';
import '../components/ctmLeadsContainer.dart';

class LeadFollowingUpScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _leadsKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _leadsKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: 'اداره العملاء '),
        elevation: 0.5,
        leading: CustomLeadingAppBar(scaffoldKey: _leadsKey),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomLeadsContainer(
                  className: "A",
                  classColor: kGreen,
                  userName: "علاء عاشور- 0123335456755 ",
                  email: "ahmed123@gmail.com",
                  categoryName: 'سوشيال ميديا',
                  categoryContainerColor: kBlue100,
                  status: 'Lead',
                  statusColor: kBlue200,
                  number: "012568998365",
                  onTapped: () {},
                ),
                SizedBox(height: 3),
                Container(
                  color: kWhite,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(sizeH * 0.01),
                    child: Container(
                      color: kWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'اهتمام العميل ',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: sizeH * 0.01),
                          Padding(
                            padding: EdgeInsets.all(sizeH * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('اسم المشروع/ اسم الوحده'),
                                Text('اسم الخدمه'),
                                Text('اسم المشروع'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: sizeH * 0.01),
                Container(
                  color: kWhite,
                  child: Padding(
                    padding: EdgeInsets.all(sizeH * 0.02),
                    child: Container(
                      color: kWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' ملاحظه ',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "هو ببساطه نص شكلي المعني ان الغايه هي الشكل و ليس المحتوي و يستخدم في صناعات المطابع",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: kWhite,
                  child: Padding(
                    padding: EdgeInsets.all(sizeH * 0.01),
                    child: Container(
                        color: kWhite,
                        child: Row(
                          children: [
                            Container(
                              height: sizeH * 0.05,
                              width: sizeV * 0.1,
                              decoration: BoxDecoration(
                                  color: kBlue,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(sizeH * 0.05))),
                              child: Center(
                                  child: Text(
                                '1',
                                style: TextStyle(fontSize: 25, color: kWhite),
                              )),
                            ),
                            SizedBox(
                              width: sizeV * 0.01,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(sizeH * 0.01),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today_outlined),
                                          SizedBox(
                                            width: sizeV * 0.01,
                                          ),
                                          Text('25/12/2021'),
                                        ],
                                      ),
                                      SizedBox(
                                        width: sizeV * 0.02,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.call),
                                          SizedBox(
                                            width: sizeV * 0.01,
                                          ),
                                          Text('العميل'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: sizeH * 0.01),
                                Text(
                                  "هو ببساطه نص شكلي المعني ان الغايه هي الشكل ",
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
                Divider(height: sizeH * 0.01),
                Container(
                  color: kWhite,
                  child: Padding(
                    padding: EdgeInsets.all(sizeH * 0.01),
                    child: Container(
                        color: kWhite,
                        child: Row(
                          children: [
                            Container(
                              height: sizeH * 0.05,
                              width: sizeV * 0.1,
                              decoration: BoxDecoration(
                                  color: kBlue,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(sizeH * 0.05))),
                              child: Center(
                                  child: Text(
                                '2',
                                style: TextStyle(fontSize: 25, color: kWhite),
                              )),
                            ),
                            SizedBox(
                              width: sizeV * 0.01,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(sizeH * 0.01),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today_outlined),
                                          SizedBox(
                                            width: sizeV * 0.01,
                                          ),
                                          Text('25/12/2021'),
                                        ],
                                      ),
                                      SizedBox(
                                        width: sizeV * 0.02,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.call),
                                          SizedBox(
                                            width: sizeV * 0.01,
                                          ),
                                          Text('العميل'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: sizeH * 0.01),
                                Text(
                                  "هو ببساطه نص شكلي المعني ان الغايه هي الشكل ",
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
                Container(
                  height: sizeH * 0.1,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(),
    );
  }
}

// و ليس المحتوي و يستخدم في صناعات المطابع