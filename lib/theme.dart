import 'package:flutter/material.dart';
import 'package:tokoku/constatnt.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appbarTheme(),
    textTheme: textTheme(),
    // inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: IconThemeData(color: secondaryColor),
    primaryColor: primaryColor,
    accentColor: primaryColor,
    indicatorColor: primaryColor,
    tabBarTheme: TabBarTheme(
      labelColor: primaryColor,
      labelStyle: TextStyle(fontWeight: FontWeight.w800),
      unselectedLabelColor: secondaryColor,
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: textColor),
    bodyText2: TextStyle(color: textColor),
  );
}

AppBarTheme appbarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 15),
    ),
  );
}
