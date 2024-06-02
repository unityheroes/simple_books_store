import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle14 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey);

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static final textStyle20 = GoogleFonts.patrickHand(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static final textStyle20simibold = GoogleFonts.patrickHand(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final textStyle30 = GoogleFonts.patrickHand(
      fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
}
