import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


showDatePickerContainer(BuildContext context) {
  var dateController = TextEditingController();
// var titleController = TextEditingController();

  showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.parse('2022-12-03'),
  ).then((value) {
    dateController.text = DateFormat.yMMMd().format(value!);
  });
}
