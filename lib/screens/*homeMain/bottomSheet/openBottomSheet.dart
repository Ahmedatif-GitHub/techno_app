import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

import 'package:technoapp/screens/*homeMain/dialogChooseClient/dialogChooseClient.dart';
import 'package:technoapp/screens/*homeMain/success/success.dart';

import 'components/ctmTextField.dart';

void openBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (BuildContext context) {
        double sizeH = MediaQuery.of(context).size.height;
        double sizeV = MediaQuery.of(context).size.width;
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
              color: kBackGround,
              height: sizeH * 0.58,
              child: Container(
                padding: EdgeInsets.only(top: sizeH * 0.01),
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(sizeH * 0.02),
                    topLeft: Radius.circular(sizeH * 0.02),
                  ),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(sizeH * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'اضافه مهمه جديده',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: sizeH * 0.01,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kGrey300,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(sizeH * 0.01),
                                )),
                            height: sizeH * 0.2,
                            child: Padding(
                              padding: EdgeInsets.all(sizeH * 0.01),
                              child: TextField(
                                minLines: 1,
                                maxLines: 5,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "اكتب تفاصيل المهمه",
                                    hintStyle: TextStyle(color: kBlack38)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: sizeH * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: sizeH * 0.05,
                                width: sizeV * 0.25,
                                decoration: BoxDecoration(
                                  color: kGrey300,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(sizeH * 0.01),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () =>
                                      showDialogChooseClient(context),
                                  child: Center(
                                    child: Text(
                                      'اختر العميل ',
                                      style: TextStyle(
                                          color: kBlack, fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(sizeH * 0.01),
                                child: Container(
                                  height: sizeH * 0.05,
                                  width: sizeV * 0.4,
                                  decoration: BoxDecoration(
                                    color: kGrey800,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(sizeH * 0.01),
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () =>
                                        showDialogChooseClient(context),
                                    child: Center(
                                        // child: Text(
                                        //   ${title},
                                        //   style: TextStyle(
                                        //       color: Colors.white, fontSize: 15),
                                        // ),

                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: sizeH * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CtmContainerData(
                                sizeH: sizeH,
                                sizeV: sizeV,
                                title: 'تاريخ المهمه الحالي',
                                data: ' dec 11 2020',
                              ),
                              SizedBox(
                                width: sizeV * 0.01,
                              ),
                              CtmContainerData(
                                sizeH: sizeH,
                                sizeV: sizeV,
                                title: 'تاريخ المتابعه القادم',
                                data: ' dec 23 2020',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: sizeH * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(sizeH * 0.01),
                                child: Container(
                                  height: sizeH * 0.07,
                                  width: sizeV * 0.14,
                                  decoration: BoxDecoration(
                                    color: kBlue,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(sizeH * 0.05)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();

                                      showMessageDialogSuccess(context);
                                    },
                                    icon: Icon(Icons.arrow_back_ios_new),
                                    color: kWhite,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        );
      });
}
