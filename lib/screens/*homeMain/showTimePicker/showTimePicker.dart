import 'package:flutter/material.dart';

_showTimePicker(BuildContext context) {
  var timeController = TextEditingController();

  showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  ).then((value) {
    timeController.text = value!.format(context).toString();
    print(value.format(context));
  });
}
