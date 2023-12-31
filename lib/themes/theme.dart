import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:js_bookstore/core/colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.openSans().fontFamily,
    primaryColor: AppColor.primaryColor,
    textTheme: const TextTheme(
      //TITLE
      titleLarge: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 32,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.w600),
      titleSmall: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.normal),

      //BODY
      bodySmall: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.normal),
      bodyMedium: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.normal),
    ),
  );

  //TextField theme
  static InputDecoration textFieldTheme = InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor, width: 2)),
      filled: true,
      fillColor: AppColor.greyColor);
}
