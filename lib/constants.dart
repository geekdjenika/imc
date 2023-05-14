import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kAppbarColor = Color(0xFF0b1033);
const kActiveCardColor = Color(0xFF141a3c);
const kInactiveCardColor = Color(0xFF272a4e);
const kBottomButtonColor = Color(0xFFff0067);

final kTitleTextStyle = GoogleFonts.montserrat(
  textStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
);
final kTitle2TextStyle = GoogleFonts.montserrat(
  textStyle: const TextStyle(fontSize: 35.0, color: Colors.white),
);
final kTailleTextStyle = GoogleFonts.montserrat(
  textStyle: const TextStyle(
      fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),
);
final kResultTextStyle = GoogleFonts.montserrat(
  textStyle: const TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
    color: Color(0xFF2eda7e),
  ),
);

final kIMCTextStyle = GoogleFonts.montserrat(
  textStyle: const TextStyle(
    fontSize: 95.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
);

final kInterpretationTextStyle = GoogleFonts.montserrat(
  textStyle: const TextStyle(
    fontSize: 22.0,
  ),
);

enum Genre {
  HOMME,
  FEMME,
}
