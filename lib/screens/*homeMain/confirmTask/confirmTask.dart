import 'package:flutter/material.dart';

showMessageDialogConfirm(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            content: Container(
              height: 250,
              width: 250,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/success.png'))),
                  ),
                  Text(
                    "اتمام المهمه",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      TextButton(
                      onPressed: () {
                        print("تاكيد");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: 80,
                          height: 30,
                          child: Center(
                            child: Text(
                              "تاكيد",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ))),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 80,
                        height: 30,
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
        ));
