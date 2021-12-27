import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color colorContainer;
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.colorContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
            decoration: BoxDecoration(
                color: colorContainer,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 40,
            height: 40,
            child: Center(
              child: TextButton(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            )));
  }
}
