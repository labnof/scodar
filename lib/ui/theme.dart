import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScodarTheme {
  static const primaryColor = Color(0xFFC4C4C4);
  static const secondaryColor = Color(0xFF263238);
  static const inactiveColor = Colors.white;

  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 98,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: secondaryColor),
    headline2: GoogleFonts.montserrat(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: secondaryColor),
    headline3: GoogleFonts.montserrat(
        fontSize: 49, fontWeight: FontWeight.w400, color: secondaryColor),
    headline4: GoogleFonts.montserrat(
        fontSize: 35,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: secondaryColor),
    headline5: GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.w400, color: secondaryColor),
    headline6: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: secondaryColor),
    subtitle1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic, // to make text italic
        letterSpacing: 0.15,
        color: secondaryColor),
    subtitle2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: secondaryColor),
    bodyText1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: secondaryColor),
    bodyText2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: secondaryColor),
    button: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: secondaryColor),
    caption: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: secondaryColor),
    overline: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: secondaryColor),
  );

  static ThemeData light() {
    return ThemeData(
      canvasColor:
          primaryColor, // use to set the bottomNavigationBar background
      brightness: Brightness.light, // use to auto generate the app colorScheme
      colorSchemeSeed:
          secondaryColor, // use to auto generate the app colorScheme
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return secondaryColor;
          },
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: secondaryColor,
        backgroundColor: primaryColor,
      ),
      scaffoldBackgroundColor: primaryColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: primaryColor,
        backgroundColor: secondaryColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: secondaryColor,
          unselectedItemColor: inactiveColor),
      textTheme: lightTextTheme,
    );
  }
}
