import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme,
            elevation: 0.0,
            centerTitle: true),
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        centerTitle: true,
      ));
}
