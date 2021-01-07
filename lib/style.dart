import 'package:flutter/material.dart';

ThemeData lightThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    accentColor: Colors.redAccent,
    focusColor: Colors.red,
    cursorColor: Colors.red,
    textSelectionHandleColor: Colors.red,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      buttonColor: Colors.red,
      textTheme: ButtonTextTheme.accent,
    ),
    buttonBarTheme: ButtonBarThemeData(
      buttonHeight: 40,
      buttonPadding: EdgeInsets.symmetric(horizontal: 10),
      alignment: MainAxisAlignment.center,
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    fixTextFieldOutlineLabel: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData darkThemeData() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    accentColor: Colors.redAccent,
    focusColor: Colors.red,
    cursorColor: Colors.red,
    textSelectionHandleColor: Colors.red,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      buttonColor: Colors.red,
      textTheme: ButtonTextTheme.accent,
    ),
    buttonBarTheme: ButtonBarThemeData(
      buttonHeight: 40,
      buttonPadding: EdgeInsets.symmetric(horizontal: 10),
      alignment: MainAxisAlignment.center,
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    fixTextFieldOutlineLabel: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
