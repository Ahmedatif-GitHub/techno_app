import 'package:flutter/material.dart';

import 'package:technoapp/constant/color.dart';

import 'ctmTap.dart';

// class CustomBottomTapBar extends StatefulWidget {
//    BuildContext? context;
//    VoidCallback? onTapList;
//    VoidCallback? onTapTasks;
//    bool ischecked = true ;

//   @override
//   State<CustomBottomTapBar> createState() => _CustomBottomTapBarState();
// }

// class _CustomBottomTapBarState extends State<CustomBottomTapBar> {
//   @override
//   Widget build(BuildContext context) {
//     double sizeH = MediaQuery.of(context).size.height;
//     double sizeV = MediaQuery.of(context).size.width;
//     return PreferredSize(
//         child: Padding(
//           padding:  EdgeInsets.all(sizeH * 0.015),
//           child: Container(
//             decoration: BoxDecoration(
//                 color: kGrey,
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             height: 40,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CustomTap(
//                   text: "قائمه العملاء",
//                   textColor: !widget.ischecked
//                       ? Theme.of(context).primaryColor
//                       : Colors.grey,
//                   color: !widget.ischecked ? Colors.white : Colors.grey[300],
//                   onTap: widget.onTapList,
//                 ),
//                 CustomTap(
//                     text: "مهامي",
//                     textColor: widget.ischecked
//                         ? Theme.of(context).primaryColor
//                         : Colors.grey,
//                     color: widget.ischecked ? Colors.white : Colors.grey[300],
//                     onTap: widget.onTapTasks),
//               ],
//             ),
//           ),
//         ),
//         preferredSize: Size.fromHeight(60.0));
//   }
// }

PreferredSizeWidget? customBottomTapBar({
  final BuildContext? context,
  final VoidCallback? onTapList,
  final VoidCallback? onTapTasks,
  final bool ischecked = true,
}) {
  return PreferredSize(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              color: kGrey300,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTap(
                text: "قائمه العملاء",
                textColor:
                    !ischecked ? Theme.of(context!).primaryColor : kGrey,
                color: !ischecked ? kWhite : kGrey300,
                onTap: onTapList,
              ),
              CustomTap(
                  text: "مهامي",
                  textColor:
                      ischecked ? Theme.of(context!).primaryColor : kGrey,
                  color: ischecked ? kWhite : kGrey300,
                  onTap: onTapTasks),
            ],
          ),
        ),
      ),
      preferredSize: Size.fromHeight(60.0));
}
