import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kshade1 = Color(0xffFFC837);
const Color kshade2 = Color(0xffFF8008);
const Color kgreyShade1 = Color(0xffDADADA);

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    backgroundColor: const Color(0xffFEFEFE),
    scaffoldBackgroundColor: const Color(0xffFEFEFE),
    shadowColor: const Color(0xffDADADA),
    iconTheme: const IconThemeData(
      color: Color(0xffFEFEFE),
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontStyle: GoogleFonts.roboto().fontStyle,
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: const Color(0xff1b1b1b)),
      bodyLarge: TextStyle(
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontStyle: GoogleFonts.roboto().fontStyle,
          fontSize: 24,
          color: const Color(0xff1b1b1b)),
      bodyMedium: TextStyle(
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontStyle: GoogleFonts.roboto().fontStyle,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 2,
          color: const Color(0xffAAAAAA)),
      bodyText1: TextStyle(
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontStyle: GoogleFonts.roboto().fontStyle,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 2,
          color: const Color(0xffAAAAAA)),
    ),
  );
}
