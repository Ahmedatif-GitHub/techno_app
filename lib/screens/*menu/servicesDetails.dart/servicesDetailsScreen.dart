import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

class ServiceDetails extends StatelessWidget {
  GlobalKey<ScaffoldState> _servicesDetailsKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _servicesDetailsKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: kWhite,
        title: CustomTitleAppbar(title: " تصميم مواقع تعريفي للشركات"),
        elevation: 0.0,
        leading: CustomLeadingAppBar(scaffoldKey: _servicesDetailsKey),
        actions: [
          CustomActionsAppBar(
            onTapped: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: sizeH * 0.02),
            Center(
              child: Container(
                  height: sizeH * 0.05,
                  width: sizeV * 0.5,
                  color: kBlue100,
                  child: Padding(
                    padding:  EdgeInsets.all(sizeH * 0.01 ),
                    child: Center(child: Text('السعر يبدا من 3500 ج')),
                  )),
            ),
            SizedBox(height: 15),
            Padding(
              padding:  EdgeInsets.all(sizeH * 0.01),
              child: Text(
                'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق “ليتراسيت” (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل “ألدوس بايج مايكر” (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم',
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(
       
      ),
    );
  }
}
