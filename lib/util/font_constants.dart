import 'package:flutter/material.dart';
import 'package:google_classroom/util/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConstants {
  static TextStyle PRIMARYFONT = GoogleFonts.montserrat();
  static TextStyle HYPERLINKFONT = TextStyle(
      fontSize: 14,
      color: ColorConstants.SECONDARYBLUE,
      decoration: TextDecoration.underline);
  static TextStyle REGULARTEXT = TextStyle(
    fontSize: 14,
    color: ColorConstants.PRIMARY,
  );
}
