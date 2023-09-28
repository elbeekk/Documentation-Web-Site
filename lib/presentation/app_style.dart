import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyle {
  AppStyle._();
  /// ###################### Colors ##########################
  ///
  //Greyscale
  static const greyscale900 = Color(0xff212121);
  static const greyscale800 = Color(0xff424242);
  static const greyscale700 = Color(0xff616161);
  static const greyscale600 = Color(0xff757575);
  static const greyscale500 = Color(0xff9E9E9E);
  static const greyscale400 = Color(0xffBDBDBD);
  static const greyscale300 = Color(0xffE0E0E0);
  static const greyscale200 = Color(0xffF5F5F5);
  static const greyscale50 = Color(0xffFAFAFA);

  /// ################# Fonts #######################

  static urbanistBold({
    double size = 18,
    Color color = AppStyle.greyscale900,
    double letterSpacing = 0,
  }) =>
      GoogleFonts.urbanist(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: color,
        decoration: TextDecoration.none,
        letterSpacing: letterSpacing,
      );

  static dmSans({
    double size = 18,
    Color color = AppStyle.greyscale900,
    TextDecoration decoration = TextDecoration.none,
    double letterSpacing = 0,
    FontWeight weight = FontWeight.w500,
    FontStyle? fontStyle,
  }) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: weight,
        color: color,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontStyle: fontStyle,
      );

  static urbanistSemiBold({
    double size = 18,
    Color color = AppStyle.greyscale900,
    TextDecoration decoration = TextDecoration.none,
    double letterSpacing = 0,
    FontStyle? fontStyle,
  }) =>
      GoogleFonts.urbanist(
        fontSize: size,
        fontWeight: FontWeight.w600,
        color: color,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontStyle: fontStyle,
      );

  static urbanistMedium({
    double size = 16,
    Color color = AppStyle.greyscale900,
    double letterSpacing = 0,
    TextDecoration textDecoration = TextDecoration.none,
    FontStyle? fontStyle,
  }) =>
      GoogleFonts.urbanist(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: color,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
        fontStyle: fontStyle,
      );

  static urbanistRegular({
    double size = 16,
    Color color = AppStyle.greyscale900,
    double letterSpacing = 0,
    TextDecoration textDecoration = TextDecoration.none,
    FontStyle? fontStyle,
  }) =>
      GoogleFonts.urbanist(
        fontSize: size,
        fontWeight: FontWeight.w400,
        color: color,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
        fontStyle: fontStyle,
      );
}
