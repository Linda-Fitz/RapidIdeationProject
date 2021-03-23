import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    primaryColor: Color(0xFFBDCA32),
    accentColor: Color(0xFFED6C66),
    hintColor: Colors.white,
    dividerColor: Colors.white,
    buttonColor: Color(0xFFBDCA32),
    scaffoldBackgroundColor: Color(0xFF50685F),
    canvasColor: Colors.grey,

    // Define the default font family.
    fontFamily: 'Karla',
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 72.0, fontFamily: 'Jellee', fontWeight: FontWeight.bold),
      headline2: TextStyle(
          fontSize: 48.0, fontFamily: 'Jellee', fontWeight: FontWeight.bold),
      headline3: TextStyle(
          fontSize: 40.0, fontFamily: 'Jellee', fontWeight: FontWeight.bold),
      headline4: TextStyle(
          fontSize: 28.0, fontFamily: 'Jellee', fontWeight: FontWeight.bold),
      headline5: TextStyle(
          fontSize: 24.0, fontFamily: 'Jellee', fontWeight: FontWeight.bold),
      headline6: TextStyle(
          fontSize: 20.0, fontFamily: 'Jellee', fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          fontSize: 16.0, fontFamily: 'Karla', fontWeight: FontWeight.normal),
      bodyText2: TextStyle(
          fontSize: 14.0, fontFamily: 'Karla', fontWeight: FontWeight.normal),
    ),
  );
}
