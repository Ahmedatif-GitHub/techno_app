import 'package:flutter/material.dart';

// class ShowDialog extends StatelessWidget {

//   @override
//   Future <dynamic> build(BuildContext context) async{
//    return  await showDialog(
  
//     context: context,
//     builder: (context) => Directionality(
//           textDirection: TextDirection.rtl,
//           child: Container(
//             child: AlertDialog(
//               content: Container(
//                 height: 180,
//                 width: 180,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/images/archiveLeads.png'))),
//               ),
//               actions: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           print("ok");
//                         },
//                         child: Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.grey[300],
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(5))),
//                             width: 80,
//                             height: 40,
//                             child: Center(
//                               child: TextButton(
//                                 child: Text(
//                                   "تاكيد",
//                                   style: TextStyle(color: Colors.grey[800]),
//                                 ),
//                                 onPressed: () {
//                                   print("تاكيد");
//                                 },
//                               ),
//                             ))),
//                     TextButton(
//                       onPressed: () => Navigator.of(context).pop(),
//                       child: Container(
//                           decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5))),
//                           width: 80,
//                           height: 40,
//                           child: Center(
//                             child: TextButton(
//                               child: Text(
//                                 "الغاء",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                                 print("الغاء");
//                               },
//                             ),
//                           )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ));
    

//   }
// }

showMessageDialogDelete(BuildContext context) => showDialog(
  
    context: context,
    builder: (context) => Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: AlertDialog(
              content: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/archiveLeads.png'))),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          print("ok");
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            width: 80,
                            height: 40,
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "تاكيد",
                                  style: TextStyle(color: Colors.grey[800]),
                                ),
                                onPressed: () {
                                  print("تاكيد");
                                },
                              ),
                            ))),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: 80,
                          height: 40,
                          child: Center(
                            child: TextButton(
                              child: Text(
                                "الغاء",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                print("الغاء");
                              },
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
    




    // Text('تاكيد الحذف'),

   





    // Stack(
    //           children: <Widget>[
    //             Center(
    //               child: Container(
    //                 width: 100,
    //                 height: 100,
    //                 decoration: BoxDecoration(
    //                     image: DecorationImage(
    //                         image: AssetImage('assets/images/delete.png'))),
    //               ),
    //             ),
    //             Container(
    //               alignment: Alignment.bottomCenter,
    //               child: const Text(
    //                 'هل انت متاكد من خساره التعاقد و نقل العميل الي الارشيف',
    //                 style: TextStyle(color: Colors.white, fontSize: 20.0),
    //               ),
    //             ),
    //           ],
    //         ),
        


    
