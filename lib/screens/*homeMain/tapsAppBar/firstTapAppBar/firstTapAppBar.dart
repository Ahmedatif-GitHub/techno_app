import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*homeMain/tapsTapView/firstTapView/firstTapView.dart';
import 'package:technoapp/screens/*homeMain/tapsTapView/secondTapView/secondTapView.dart';

class FirstTapAppBar extends StatelessWidget {
  const FirstTapAppBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {

    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
   

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.all(sizeH * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: sizeH* 0.07,
                  width: sizeV * 0.7,
                  // width: 200,
                  // height: 45,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: kBlue,
                    unselectedLabelColor: kGrey,
                    tabs: [
                      Tab(
                        text: 'قائمه المهام',
                      ),
                      Tab(
                        text: 'مهام مكتمله',
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                //  dragStartBehavior: DragStartBehavior.start,
                controller: _tabController,
                children: [
                  FirstTapView(),
                  // FirstTapView(),
                  SecondTapView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
