import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';

class OpenBtnSheetFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kTeal,
      child: TextButton(
        onPressed: () => openBtnSheetFilter(context),
        child: Text("ok"),
      ),
    );
  }
}

void openBtnSheetFilter(context) {
  List<String> listItems = [
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
    "مثال اختر بالعميل",
  ];
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        double sizeH = MediaQuery.of(context).size.height;
        double sizeV = MediaQuery.of(context).size.width;
        return Container(
          color: Color(0xFF737373),
          height: sizeH * 0.3,
          child: Container(
            padding: EdgeInsets.only(top: sizeH * 0.01),
            decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(sizeH * 0.02),
                  topLeft: Radius.circular(sizeH * 0.02),
                )),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(sizeH * 0.01),
                  child: ListView.builder(
                      itemCount: listItems.length,
                      itemBuilder: (context, index) {
                        return ListView.builder(
                            itemCount: listItems.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: Text(
                                listItems[index],
                              ));
                            });
                      }),
                ),
              ),
            ),
          ),
        );
      });
}
