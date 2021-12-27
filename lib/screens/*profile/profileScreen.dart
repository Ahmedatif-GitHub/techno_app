import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';

import 'components/ctmProfileSetting.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<ScaffoldState> _profileKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
     double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          title: CustomTitleAppbar(title: 'الملف الشخصي'),
          elevation: 0.0,
          leading: CustomLeadingAppBar(scaffoldKey: _profileKey),
          actions: [
            CustomActionsAppBar(
              onTapped: () {},
            ),
          ],
        ),
        body: Container(
          padding:  EdgeInsets.all(sizeH * 0.01),
          child: ListView(
            children: [
              CustomProfileSetting(
                  context, "الاسم", ' محمد علي ', Icon(Icons.person)),
              CustomProfileSetting(
                  context, " رقم الهاتف", "01001944978", Icon(Icons.phone)),
              CustomProfileSetting(context, "البريد الالكتروني",
                  'com.maria@maria', Icon(Icons.email)),
              CustomProfileSetting(
                  context, "كلمه السر", '*********', Icon(Icons.lock)),
            ],
          ),
        ));
  }
}
