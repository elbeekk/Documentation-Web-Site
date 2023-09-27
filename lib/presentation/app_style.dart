import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyle {
  AppStyle._();

  /// ###################### Colors ##########################
  ///
  static const primary = Color(0xffFF981F);

  //Secondary
  static const secondary = Color(0xffFFD300);
  static const storyColor = Color(0xffF4900C);
  static const secondary400 = Color(0xffFFDC33);
  static const secondary300 = Color(0xffFFE566);
  static const secondary200 = Color(0xffFFED99);
  static const secondary100 = Color(0xffFFFBE6);

  //Alert & Status
  static const success = Color(0xff4ADE80);
  static const info = Color(0xff246BFD);
  static const warning = Color(0xffFACC15);
  static const error = Color(0xffF75555);
  static const disable = Color(0xffD8D8D8);
  static const alert = Color(0xff29974D);
  static const buttonDisable = Color(0xff29974D);

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

  //Dark Colors
  static const dark1 = Color(0xff181A20);
  static const dark2 = Color(0xff1F222A);
  static const dark3 = Color(0xff35383F);

  //Others
  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff000000);
  static const red = Color(0xffF44336);
  static const pink = Color(0xffE91E63);
  static const purple = Color(0xff9C27B0);
  static const deepPurple = Color(0xff673AB7);
  static const indigo = Color(0xff3F51B5);
  static const blue = Color(0xff2196F3);
  static const grey = Color(0xff878787);
  static const transparent = Colors.transparent;
  static Color shimmerBase = Colors.grey.shade300;
  static Color shadow = const Color(0xff04060F).withOpacity(0.05);
  static Color shadowSocials = const Color(0xff1DFBD3).withOpacity(0.10);
  static Color greenTransparent = const Color(0xff1BAC4B).withOpacity(0.08);

  //While colors

  static const whileColor80 = Color(0xFFCCCCCC);
  static const whileColor60 = Color(0xFF999999);
  static const white40 = Color(0xFF666666);
  static const whileColor20 = Color(0xFF333333);
  static const whileColor10 = Color(0xFF191919);
  static const whileColor5 = Color(0xFF0D0D0D);

  //BlackColors
  static const blackColor = Color(0xFF16161E);
  static const blackColor80 = Color(0xFF45454B);
  static const blackColor60 = Color(0xFF737378);
  static const black40 = Color(0xFFA2A2A5);
  static const blackColor20 = Color(0xFFD0D0D2);
  static const blackColor10 = Color(0xFFE8E8E9);
  static const blackColor5 = Color(0xFFF3F3F4);

  static const MaterialColor primaryMaterialColor =
  MaterialColor(0xFF9581FF, <int, Color>{
    50: Color(0xFFEFECFF),
    100: Color(0xFFD7D0FF),
    200: Color(0xFFBDB0FF),
    300: Color(0xFFA390FF),
    400: Color(0xFF8F79FF),
    500: Color(0xFF7B61FF),
    600: Color(0xFF7359FF),
    700: Color(0xFF684FFF),
    800: Color(0xFF5E45FF),
    900: Color(0xFF6C56DD),
  });

  //Gradients
  static LinearGradient blueGradiant = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xff6F9EFF), Color(0xff246BFD)]);

  static LinearGradient sunsetOrangeGradiant = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xffFF8285), Color(0xffFF575C)]);

  static LinearGradient purpleGradiant = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff896BFF),
        Color(0xff6842FF),
      ]);

  static LinearGradient greenGradiant = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff39E180),
        Color(0xff1AB65C),
      ]);

  static LinearGradient yellowGradiant = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffFFE580),
        Color(0xffFACC15),
      ]);
  static LinearGradient primaryGradiant = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffFFAB38),
        Color(0xffFB9400),
      ]);

  static List<BoxShadow> boxShadow = [
    BoxShadow(color: shadow, offset: const Offset(0, 4), blurRadius: 60.r)
  ];

  static ButtonStyle buttonStyle = ButtonStyle(
    overlayColor: MaterialStateProperty.all(AppStyle.primary.withOpacity(0.1)),
  );

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
