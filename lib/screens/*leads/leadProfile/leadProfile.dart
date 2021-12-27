import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/dropDownBtn.dart/leftDropdownBtn.dart';
import 'package:technoapp/*widgets/dropDownBtn.dart/mainDropdownBtn.dart';
import 'package:technoapp/*widgets/dropDownBtn.dart/rightDropdownBtn.dart';
import 'package:technoapp/*widgets/dropDownBtn.dart/widgetDropDownBtn.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*leads/leadProfile/components/ctmTextField.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '../archiveLeadsAlert/archiveLeadsAlert.dart';
import '../components/ctmLeadsContainer.dart';

class LeadProfileScreen extends StatelessWidget {
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
        title: CustomTitleAppbar(title: 'اسم العميل'),
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
        child: SingleChildScrollView(
          // padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextField(title: 'الاسم*', textField: ""),
              CustomTextField(title: 'رقم الهاتف*', textField: ""),
              CustomTextField(title: 'رقم هاتف اخر ', textField: ""),
              CustomTextField(title: 'العنوان', textField: ""),
              CustomTextField(title: 'البريد الالكتروني', textField: ""),
              Padding(
                padding:  EdgeInsets.all(sizeH * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('فئه العميل'),
                        Container(
                            height: sizeH * 0.055,
                            width: sizeV * 0.4,
                            child: RightDropdownButtonWidget()),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('حاله العميل'),
                        Container(
                            height: sizeH * 0.055,
                            width: sizeV * 0.4,
                            child: LeftDropdownButtonWidget()),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(sizeH * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('مصدر العميل '),
                    Container(
                        height: sizeH * 0.055,
                        width: double.infinity,
                        child: MainDropdownButtonWidget()),
                  ],
                ),
              ),
              // CustomTextField(title: 'مصدر العميل ', textField: ""),
              Padding(
                padding:  EdgeInsets.all(sizeH * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                      color: kGrey300,
                      borderRadius: BorderRadius.all(Radius.circular(sizeH * 0.01))),
                  height: sizeH * 0.2,
                  child: Padding(
                    padding:  EdgeInsets.all(sizeH * 0.01),
                    child: TextField(
                      minLines: 1,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'من طرف فلان الفلاني و عايز الشقه الفلانيه',
                          hintStyle: TextStyle(color: Colors.black38)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: CustomFloatingActionBtn(

      // ),
    );
  }
}
