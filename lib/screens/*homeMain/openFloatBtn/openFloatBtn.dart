// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:technoapp/screens/*leads/leadProfile/leadProfile.dart';

// class OpenFloatBtu extends StatefulWidget {
//   OpenFloatBtu({Key? key}) : super(key: key);

//   @override
//   _OpenFloatBtuState createState() => _OpenFloatBtuState();
// }

// class _OpenFloatBtuState extends State<OpenFloatBtu> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.black.withOpacity(0.7),
//       floatingActionButton: SpeedDial(
//         backgroundColor: Colors.amber,
//         foregroundColor: Colors.white,
//         overlayColor: Colors.black,
//         overlayOpacity: 0.9,
//         spacing: 10,
//         spaceBetweenChildren: 10,
//         // animatedIcon: AnimatedIcons.add_event,
//                 animatedIcon: AnimatedIcons.menu_close,

//         children: [
//           SpeedDialChild(
//             child: Icon(Icons.markunread),
//             label: 'ه جديده',
//             onTap: () => print('gggggg'),
//           ),
//           SpeedDialChild(
//               child: Icon(Icons.person),
//               label: 'عميل جديد',
//               onLongPress: (){
//                 print("lllllll");
//               },
//               onTap: () {
//                 print("oooooooooooooo");
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => LeadProfileScreen()));
//               }),
//         ],
//       ),
//     );
//   }

//   clickAction() {
//     print('====================k');
//   }
// }
