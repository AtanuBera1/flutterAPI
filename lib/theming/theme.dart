import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepOrange,
      appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(StadiumBorder()),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0)))),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        focusColor: Colors.black,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(50.0)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(50.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(50.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(50.0)),
      ));
}
