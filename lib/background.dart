// import 'package:flutter/material.dart';

// class BackGroundImageHome extends StatelessWidget {
//   const BackGroundImageHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Stack(
//           children: <Widget>[
//             Container(
//               height: size.height * 0.60,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/backgroundGrey.png'),
//                 ),
//               ),
//             ),
//             Container(
//               height: size.height * 0.45,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/backgroundBlue.png'),
//                 ),
//               ),
//             ),
//             Container(
//               height: size.height * 0.22,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/backgroundYellow.png'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
