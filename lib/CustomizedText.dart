import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CustomizedText {
  var authorText = GoogleFonts.badScript(
      fontSize: 20,
      color: Colors.white,
      letterSpacing: 2,
      fontWeight: FontWeight.bold);

  var sentanceText = GoogleFonts.quattrocentoSans(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1);

  var getInspiredText = GoogleFonts.abrilFatface(
    fontSize: 35,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    letterSpacing: 2,
  );
}
