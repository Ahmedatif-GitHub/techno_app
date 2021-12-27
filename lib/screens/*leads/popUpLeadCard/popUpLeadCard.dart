import 'package:flutter/material.dart';

showMessageDialogPopUpLeadCard(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            backgroundColor: Colors.white,
            content: Container(
              height: 220,
              width: 220,
              child: Column(
                children: [
                  CustomTextBottom(
                      color: Colors.tealAccent[700],
                      text: 'متابعه جديده',
                      onTapped: () {}),
                  SizedBox(height: 5),
                  CustomTextBottom(
                    color: Colors.blue,
                    text: 'بيانات العميل',
                    onTapped: () {},
                  ),
                  SizedBox(height: 5),
                  CustomTextBottom(
                    color: Colors.blue[800],
                    text: 'سجل المتابعه ',
                    onTapped: () {},
                  ),
                  SizedBox(height: 5),
                  CustomTextBottom(
                    color: Colors.yellow[800],
                    text: 'المهام ',
                    onTapped: () {},
                  ),
                  SizedBox(height: 5),
                  CustomTextBottom(
                    color: Colors.green[800],
                    text: ' اتمام التعاقد',
                    onTapped: () {},
                  ),
                  SizedBox(height: 5),
                  CustomTextBottom(
                    color: Colors.red[800],
                    text: ' خساره التعاقد',
                    onTapped: () {},
                  ),
                ],
              ),
            ),
          ),
        ));

class CustomTextBottom extends StatelessWidget {
  final Color? color;
  final String text;
  final Function() onTapped;
  const CustomTextBottom({
    Key? key,
    required this.color,
    required this.text,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: TextButton(
          onPressed: onTapped,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
