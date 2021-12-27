import 'package:flutter/material.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '../archiveLeadsAlert/archiveLeadsAlert.dart';
import '../components/ctmLeadsContainer.dart';

class ArchiveLeads extends StatelessWidget {
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
        title: CustomTitleAppbar(title: ' ارشيف العملاء '),
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
          child: Column(
            children: [
              Container(
                color: kWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Expanded(
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       suffixIcon: Icon(
                    //         Icons.search,
                    //         size: 20,
                    //         color: Colors.blue,
                    //       ),
                    //       hintText: "بحث",
                    //       hintStyle: TextStyle(color: Colors.black38)
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.search,
                              size: 20,
                              color: kBlue,
                            ),
                            hintText: "بحث",
                            hintStyle: TextStyle(color: kBlack38)),
                      ),
                    ),
                    Expanded(child: Icon(Icons.more_vert)),
                  ],
                ),
              ),
              SizedBox(height: sizeH * 0.01),
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
              SizedBox(height: sizeH * 0.01),
              CustomLeadsContainer(
                className: 'C',
                classColor: kYellow700,
                userName: 'علاء عاشور- 0123335456755 ',
                email: "ahmed123@gmail.com",
                categoryName: 'المعرض السنوي للشركه',
                categoryContainerColor: kBlue100,
                status: 'delayed',
                statusColor: kYellow700,
                number: "012568998365",
                onTapped: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionBtn(),
    );
  }
}
