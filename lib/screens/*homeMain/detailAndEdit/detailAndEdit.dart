import 'package:flutter/material.dart';

import 'package:technoapp/*widgets/ctmActionsAppBar.dart';
import 'package:technoapp/*widgets/ctmFloatingActionBtn.dart';
import 'package:technoapp/*widgets/ctmLeadingAppBar.dart';
import 'package:technoapp/screens/*leads/popUpLeadCard/popUpLeadCard.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

class DetailAndEdit extends StatelessWidget {
  GlobalKey<ScaffoldState> _detailAndEditKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _detailAndEditKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.3,
          leading: CustomLeadingAppBar(scaffoldKey: _detailAndEditKey),
          actions: [
            CustomActionsAppBar(
              onTapped: () {},
            ),
          ]),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: size.height * 0.15,
                    // height: 80,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.red,
                          width: 8,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'للعميل اجتماع مناقشه العرض المقدم '),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.alarm),
                                  color: Colors.blue,
                                ),
                                Text('duedata'),
                                SizedBox(width: 5),
                                Text('9:00am'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          " ا/احمد علي 01234567887  ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 2),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('المشروع: مول ابراج - عبد السلام عارف '),
                          SizedBox(
                            height: 20,
                          ),
                          Text("الوحده محل تجاري الدور تاني"),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(height: 2),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ملاحظات'),
                        SizedBox(height: 15),
                        Container(
                          height: size.height * 0.15,
                          // height: 120,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: " كتابه ملاحظات",
                                hintStyle: TextStyle(color: Colors.black38)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextBottom(
                                color: Colors.blue,
                                text: "تاكيد",
                                onTapped: () {}),
                            SizedBox(width: 20),
                            CustomTextBottom(
                                color: Colors.red,
                                text: "الغاء",
                                onTapped: () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
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
