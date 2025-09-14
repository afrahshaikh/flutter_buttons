import 'package:flutter/material.dart';

Widget rowTextButton(String text, Widget child) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('$text -', style: TextStyle(fontSize: 16, color: Colors.black)),
      SizedBox(width: 200, height: 30, child: child),
    ],
  );
}
