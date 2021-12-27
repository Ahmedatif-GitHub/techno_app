import 'package:flutter/material.dart';

class CustomContainerHome extends StatelessWidget {
  final Color color;
  final String? title;
  final String? nameAndNumber;
  final Icon icon;
  final String? days;
  final String? time;
  const CustomContainerHome({
    Key? key,
    required this.color,
    required this.title,
    required this.nameAndNumber,
    required this.icon,
    required this.days,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.white,
                // color: Colors.teal,

        height: size.height * 0.2,
        // height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                color: color,
                width: 8,
              ),
              SizedBox(width: 10),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      title!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 8),
                    Container(
                      // color: Colors.blue[100],
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          // color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: TextButton(
                        child: Text(
                          nameAndNumber!,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            color: Colors.blue, onPressed: () {}, icon: icon),
                        Text(days!),
                        SizedBox(width: 10),
                        Text(time!),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
            // Row(
            //   children: [
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         IconButton(
            //             onPressed: (){},
            //             icon: Icon(
            //               Icons.more_vert_rounded,
            //             )),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
