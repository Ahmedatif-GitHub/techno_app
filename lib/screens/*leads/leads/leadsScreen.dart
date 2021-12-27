import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technoapp/*widgets/widgets.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*auth/components/textFieldInput.dart';
import 'package:technoapp/screens/*leads/leadFollowingUp/leadFollowingUp.dart';
import 'package:technoapp/screens/*menu/drawer/drawerScreen.dart';

import '../archiveLeadsAlert/archiveLeadsAlert.dart';
import '../components/ctmLeadsContainer.dart';

class LeadsScreen extends StatelessWidget {
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
                Container(
                  color: kWhite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(sizeH * 0.01),
                        child: TextInputField(
                          icon: FontAwesomeIcons.search,
                          hint: "بحث",
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.done,
                        ),
                      ),

                       Expanded(child: Icon(Icons.more_vert_outlined)),
                      // Container(
                      //   height: sizeH * 0.04,
                      //   decoration: BoxDecoration(
                      //       color: kBlack12,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(sizeH * 0.01),
                      //       )),
                        // child:
                      //    Padding(
                      //     padding: const EdgeInsets.only(right: 10),
                      //     child: TextField(
                      //       decoration: InputDecoration(
                      //         border: InputBorder.none,
                      //         suffixIcon: Icon(
                      //           Icons.search,
                      //           size: 20,
                      //           color: kBlack,
                      //         ),
                      //         hintText: "بحث",
                      //       ),
                      //     ),
                      //   ),
                      // // ),
                      // Icon(Icons.more_vert_outlined),
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
                  onTapped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LeadFollowingUpScreen()));
                  },
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
      ),
      floatingActionButton: CustomFloatingActionBtn(),
    );
  }
}
