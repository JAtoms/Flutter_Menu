import 'package:flutter/material.dart';

final Color backgroundColor = Color(0XFFF23232F);
final Color foregroundColor = Color(0XFFF2B2B3B);

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({required this.text, this.fontWeight = FontWeight.normal});

  final String text;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(text,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: fontWeight)),
    );
  }
}
