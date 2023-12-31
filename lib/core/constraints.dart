import 'package:flutter/material.dart';

class AppConstraints {
  static double kSpaceBetweenItemsXXL = 32.0;
  static double kSpaceBetweenItemsXL = 24.0;
  static double kSpaceBetweenItemsLg = 20.0;
  static double kSpaceBetweenItemsMd = 14.0;
  static EdgeInsets kHorizontalPadding =
      const EdgeInsets.symmetric(horizontal: 12);

  static EdgeInsets kPadding =
      EdgeInsets.symmetric(horizontal: 12, vertical: kSpaceBetweenItemsXXL);

//Get width
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //Get height
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
