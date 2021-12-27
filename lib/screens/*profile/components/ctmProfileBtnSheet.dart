import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

CustomProfileBtnSheet(context, String? title, String? text, Widget? child) {
double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;
      showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            
              color: kBackGround,
              height: sizeH * 0.2,
              child: Container(
                padding: EdgeInsets.only(top: sizeH * 0.01),
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(sizeH * 0.02),
                      topLeft: Radius.circular(sizeH * 0.02),
                    )),
                child: Padding(
                  padding:  EdgeInsets.all(sizeH * 0.02),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Text(
                                "${title}",
                                style: TextStyle(
                                  color: kBlue900,
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: sizeH * 0.01),
                                child: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.close)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: sizeH * 0.02),
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: text,
                          ),
                          onTap: () {
                            print("done");
                          },
                        ),
                        Divider(
                          height: 3,
                        ),
                        SizedBox(height: sizeH * 0.02),

                        Container(
                          height: sizeH * 0.03,
                          width: sizeV * 0.08,
                          decoration: BoxDecoration(
                            color: kBlue900,
                            borderRadius: BorderRadius.circular(sizeH * 0.01),
                          ),
                          child: Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "تاكيد",
                                  style: TextStyle(color: kWhite),
                                )),
                          ),
                        ),

                        // child!,
                      ],
                    ),
                  ),
                ),
              )),
        );
      });
}
