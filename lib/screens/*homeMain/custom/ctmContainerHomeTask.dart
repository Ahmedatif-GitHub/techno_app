import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class CustomContainerHomeTask extends StatelessWidget {
  final Color color;
  final String title;
  final String nameAndNumber;
  final String days;
  final String timeDuedate;
  final String time;
  final Function() onTapped;
  const CustomContainerHomeTask({
    Key? key,
    required this.color,
    required this.title,
    required this.nameAndNumber,
    required this.days,
    required this.timeDuedate,
    required this.time,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTapped,
      child: Container(
        color: kWhite,
        height: sizeH * 0.2,

        // height: 100,
        child: Row(children: [
          Container(
            color: color,
            width: sizeV * 0.01,
          ),
          SizedBox(width: sizeV * 0.01),
          Container(
            color: kWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: sizeH * 0.01),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: sizeH * 0.01),
                Container(
                  // color: Colors.blue[100],
                  decoration: BoxDecoration(
                      color: kBlue100,
                      // color: Colors.grey[300],
                      borderRadius:
                          BorderRadius.all(Radius.circular(sizeH * 0.01))),
                  child: TextButton(
                    child: Text(
                      nameAndNumber,
                      style: TextStyle(color: kBlack),
                    ),
                    onPressed: () {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.alarm)),
                            Text('duedata'),
                          ],
                        ),
                        SizedBox(width: sizeV * 0.01),
                        Text(timeDuedate),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.mark_chat_read_rounded)),
                            Text(days),
                          ],
                        ),
                        SizedBox(width: sizeV * 0.01),
                        Text(time),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
