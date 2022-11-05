import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Raleway',
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Nunito',
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline1: TextStyle(
      fontFamily: 'Raleway',
      fontSize: 32.0,
      fontWeight: FontWeight.w900,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontFamily: 'Raleway',
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Raleway',
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Nunito',
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline1: TextStyle(
      fontFamily: 'Raleway',
      fontSize: 32.0,
      fontWeight: FontWeight.w900,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontFamily: 'Raleway',
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return Colors.black;
          },
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      textTheme: darkTextTheme,
    );
  }
}
