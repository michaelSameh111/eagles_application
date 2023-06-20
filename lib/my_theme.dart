import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTheme {
  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;
  static Color mainBlue = Color(0xff2494A3);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xfff5f5fe),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold)),
      primaryTextTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
            color: Colors.transparent,
            shadows: [Shadow(offset: Offset(0, -10), color: whiteColor)],
            decoration: TextDecoration.underline,
            height: -2,
            decorationColor: mainBlue,
            decorationThickness: 2),
        subtitle1: TextStyle(
            fontSize: 10.sp, color: whiteColor, fontWeight: FontWeight.bold),
        subtitle2: TextStyle(
            fontSize: 20.sp, color: blackColor, fontWeight: FontWeight.w500),

      ));
}
