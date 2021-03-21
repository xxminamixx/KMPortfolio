import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KMTextStyle {

  static TextStyle notoSerif({
    @required double? size,
    bool isBold = false,
  }) {
    return GoogleFonts.notoSerif(
        textStyle: TextStyle(
          fontSize: size,
          color: Colors.grey,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal
        )
    );
  }

  static TextStyle lato({
    @required double? size,
    bool isBold = false,
    double lineHeight = 2.0
  }) {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: size,
        color: Colors.grey,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        height: lineHeight
      )
    );
  }

}