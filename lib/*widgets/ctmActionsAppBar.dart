import 'package:flutter/material.dart';

class CustomActionsAppBar extends StatelessWidget {
  final Function() onTapped;

  const CustomActionsAppBar({Key? key, required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
        double sizeH = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(right: sizeH * 0.01),
      child: IconButton(
        icon: Image.asset('assets/images/avatar3 1.png'),
        onPressed: onTapped,
      ),
    );
  }
}



// Container CustomActionsAppBar({
//   void Function()? onTapped,
// }) {
//   return Container(
//     margin: EdgeInsets.only(right: 5),
//     child: IconButton(
//       icon: Image.asset('assets/images/avatar3 1.png'),
//       onPressed: onTapped,
//     ),
//   );
// }
