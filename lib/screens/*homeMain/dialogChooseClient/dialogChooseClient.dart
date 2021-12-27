import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

List<String> dataList = [
  'ahmed',
  'amr',
  'hossam',
  'sharaktar',
  'ahmed',
  'amr',
  'hossam',
  'sharaktar'
];

// showDialogChooseClient(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Directionality(
//         textDirection: TextDirection.rtl,
//         child: AlertDialog(
//           title: Container(
//             child: Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     suffixIcon: Icon(
//                       Icons.search,
//                       size: 20,
//                       color: Colors.blue,
//                     ),
//                     hintText: "بحث",
//                   ),
//                 ),
//                 Container(
//                     height: 120,
//                     child: ListView.builder(
//                       padding: const EdgeInsets.all(5.0),
//                       itemCount: dataList.length,
//                       itemBuilder: (_, index) {
//                         return Container(
//                           color: Colors.teal,
//                           height: 30,
//                           child:
//                               Center(child: Text('${dataList[index]}')),
//                         );
//                       },
//                     )),
//               ],
//             ),
//           ),
//         )));

showDialogChooseClient(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          title: Container(
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: kBlack12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: kBlack,
                        ),
                        hintText: "بحث",
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 120,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(5.0),
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print("okkkk");
                          },
                          child: Container(
                            color: Colors.teal,
                            height: 50,
                            child: Center(child: Text('${dataList[index]}')),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        height: 2,
                      ),
                    )),
              ],
            ),
          ),
        )));
