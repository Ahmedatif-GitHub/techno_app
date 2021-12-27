import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';


class UnitScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _unitKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
     double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _unitKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: " مشروع العلا مصر"),
        elevation: 0.5,
        leading: CustomLeadingAppBar(scaffoldKey: _unitKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
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
                            Container(
                              height: sizeH * 0.03,
                              width: sizeV * 0.12,
                              color: kGreen,
                              child: Center(
                                child: Text('سكني',
                                    style: TextStyle(color: kWhite)),
                              ),
                            ),
                            SizedBox(width: sizeV * 0.01),
                            Container(
                              height: sizeH * 0.03,
                              width: sizeV * 0.12,
                              color: kOrange,
                              child: Center(
                                child: Text('5541',
                                    style: TextStyle(color: kWhite)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: sizeH * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              Icon(Icons.crop_square),
                              SizedBox(width: sizeV * 0.01),
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
                SizedBox(height: sizeH * 0.01),
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/unit.png"),
                ),
                SizedBox(height: sizeH * 0.01),
                Padding(
                  padding:  EdgeInsets.all(sizeH * 0.02),
                  child: Text(
                      'تميز الشقق السكنية بسعرها المنخفض إذا ما قورنت مع المنازل المفردة. كما أن للبناء العمودي إيجابيات كثيرة، بدل من البناء الأفقي وخاصةً في المدن الكبرى، والتي تعرف نمو سكانيا كبيرا. هي وحدة سكنية تقع ضمن مجمع سكني متعدد الطوابق، ويتألف كل دور من أدوار المبنى السكني من شقة أو أكثر. تكون الشقق السكنية مؤجرة لساكنيها أو مملوكة لهم دون أن تمتد الملكية إلى الأرض التي أقيم عليه المبنى.[1][2][3]'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(
       
      ),
    );
  }
}
