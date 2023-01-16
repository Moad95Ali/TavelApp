import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class Style {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = Color.fromARGB(255, 224, 135, 0);
  static TextStyle textStyle = TextStyle(
      fontSize: 15, color: Color(0x853b3b3b), fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17, color: Color(0x753b3b3b), fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w400);
}
