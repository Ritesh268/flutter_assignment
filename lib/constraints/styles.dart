import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

abstract class ThemeStyles {
  static TextStyle containerText = TextStyle(color: HexColor("#598216"));
  static Color primaryColor = const Color.fromARGB(255, 238, 67, 124);
  static Color secondaryColor = HexColor('#EFC100');
  static Color whiteColor = HexColor('#FFFFFF');
  static Color darkBlueColor = HexColor('#00008B');
  static Color disabledColor = HexColor("#A4BA7F");
  static Color blueColor = HexColor("#1D74EB");
  static Color redColor = HexColor("#FF0000");
  static EdgeInsets paddingLeft10 = const EdgeInsets.only(left: 10);
  static Color lineColor = HexColor("#CCCCCC"); //gray
  static Color lightGrayColor =
      HexColor("#F4F4F4"); //light gray color for component count bg
  static Color blackColor = HexColor('#000000');
  static TextStyle fontSizeNormalBlue = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 10,
    fontFamily: "Poppins",
    color: ThemeStyles.blueColor,
  );
  static TextStyle fontSizeBoldB = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    fontFamily: "Poppins",
    color: ThemeStyles.blackColor,
  );
  static TextStyle fontSizeNormalD = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    fontFamily: "Poppins",
    // color: ThemeStyles.lineColor,
  );
  static TextStyle fontSizeNormalBlack = TextStyle(
    // fontWeight: FontWeight.w600,
    fontSize: 14,
    fontFamily: "Poppins",
    color: ThemeStyles.blackColor,
  );
  static TextStyle fontSizeNormalWhite = TextStyle(
    // fontWeight: FontWeight.w600,
    fontSize: 14,
    fontFamily: "Poppins",
    color: ThemeStyles.whiteColor,
  );
  static TextStyle fontSizeNormalDisableColor = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    fontFamily: "Poppins",
    color: ThemeStyles.lineColor,
  );
  static TextStyle fontSizeNormalBlackWithUnderline = TextStyle(
      // fontWeight: FontWeight.w600,
      fontSize: 16,
      fontFamily: "Poppins",
      color: ThemeStyles.blackColor,
      decoration: TextDecoration.underline);
}
