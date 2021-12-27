import 'package:flutter/material.dart';


showMessageDialogSuccess(BuildContext context) => showDialog(


    context: context,
    builder: (context) => AlertDialog(

          // title: Text("رساله نجاح متغيره"),
          content: Container(
               height: 200,
                  width: 200,
            child: Column(
              children: [
                // Container(
                //   height: 200,
                //   width: 200,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage('assets/images/success.png'))),
                // ),
                Image(image: AssetImage('assets/images/success.png')),
                Text("رساله نجاح متغيره"),
              ],
            ),
          ),
        ),
        );

// class ShowMessageDialogSuccessClass extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return AlertDialog(
//       content: Container(
//         height: size.height * 0.3,
//         width: size.width * 0.3,
//         child: Column(
//           children: [
//             Image(image: AssetImage('assets/images/success.png')),
//             Text("رساله نجاح متغيره"),
//           ],
//         ),
//       ),
//     );
//   }
// }
