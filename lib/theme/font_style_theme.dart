import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyleTheme {
  static TextStyle headingStyle = GoogleFonts.playfairDisplay(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white70,
  );

  static TextStyle subheadingStyle = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white54,
  );

  static TextStyle bodyStyle = GoogleFonts.lato(
    fontSize: 16,
    color: Colors.white70,
  );

  static TextStyle buttonStyle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle captionStyle = GoogleFonts.openSans(
    fontSize: 14,
    color: Colors.white70,
    fontStyle: FontStyle.italic,
  );
}
