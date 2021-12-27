
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/screens/*leads/leadProfile/leadProfile.dart';

class CustomSpeedDial extends StatelessWidget {
  const CustomSpeedDial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: kAmber,
      foregroundColor: kWhite,
      overlayColor: kBlack,
      overlayOpacity: 0.9,
      spacing: 10,
      spaceBetweenChildren: 10,
      children: [
        SpeedDialChild(
          child: Icon(Icons.markunread),
          label: 'مهمه جديده',
          onTap: () {
            print('مهمه جديده');
              // Navigator.push(context,
              //   MaterialPageRoute(builder: (context) => openBottomSheet(context)));
            // openBottomSheet(context);
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.person),
          label: 'عميل جديد',
          onTap: () {
            print('عميل جديد');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LeadProfileScreen()));
          },
        ),
      ],
    );
  }
}
