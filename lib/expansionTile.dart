// import 'package:flutter/material.dart';
// class ExpansionTile extends StatefulWidget {
//   const ExpansionTile({ Key? key }) : super(key: key);

//   @override
//   _ExpansionTileState createState() => _ExpansionTileState();
// }

// class _ExpansionTileState extends State<ExpansionTile> {
//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//           key: PageStorageKey(this.widget.headerTitle),
//           title: Container(
//               width: double.infinity,
//               child: Text("Header",style: TextStyle(fontSize: 18),),
//           trailing: Icon(Icons.arrow_drop_down,size: 32,color: Colors.pink,),
//           onExpansionChanged: (value){
//             setState(() {
//               isExpand=value;
//             });
//           },
//           children: [
//            Text("Child 1",style: TextStyle(fontSize: 18),),
//             Text("Child 2",style: TextStyle(fontSize: 18),),
//           ]
//           )
//           ),
//   }
// }