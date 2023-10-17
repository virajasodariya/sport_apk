import 'package:flutter/material.dart';

class BoxDecorationStyle {
  static BoxDecoration kgreyBoxShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        blurRadius: 1,
        spreadRadius: 1,
      )
    ],
  );
}

class FontTextStyle {
  static TextStyle kGrey16W600 = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
}
