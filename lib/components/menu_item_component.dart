import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  MenuItem(
      {required this.icon,
        this.textColor = Colors.white,
        required this.text,
        this.fontWeight = FontWeight.normal,
        this.fontSize = 18});

  final Icon icon;
  final String text;
  Color textColor;
  FontWeight fontWeight;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: icon,
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(text,
                style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight)),
          ),
        ),
      ],
    );
  }
}