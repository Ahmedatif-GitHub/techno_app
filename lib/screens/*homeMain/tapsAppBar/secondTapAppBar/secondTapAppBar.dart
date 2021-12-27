import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*leads/components/ctmLeadsContainer.dart';

class SecondTapAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       double sizeH = MediaQuery.of(context).size.height;
        double sizeV = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          CustomLeadsContainer(
            className: 'C',
            classColor: kYellow100,
            userName: 'علاء عاشور- 0123335456755 ',
            email: "ahmed123@gmail.com",
            categoryName: 'المعرض السنوي للشركه',
            categoryContainerColor: kBlue100,
            status: 'delayed',
            statusColor: kYellow100,
            number: "012568998365", onTapped: () {  },
          ),
          SizedBox(height: sizeH * 0.01),
          CustomLeadsContainer(
            className: "A",
            classColor: Colors.green,
            userName: "علاء عاشور- 0123335456755 ",
            email: "ahmed123@gmail.com",
            categoryName: 'سوشيال ميديا',
            categoryContainerColor: kBlue100,
            status: 'Lead',
            statusColor: kBlue200,
            number: "012568998365", onTapped: () {  },
          ),
        ],
      ),
    );
  }
}
