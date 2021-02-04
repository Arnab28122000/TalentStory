import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text fontStyle(information) {
  return Text(
    information,
    style: GoogleFonts.average(textStyle: TextStyle(fontSize: 18)),
  );
}

Text fontStyleforSchool(information) {
  return Text(
    information,
    style: GoogleFonts.averageSans(
        textStyle: TextStyle(fontSize: 15, color: const Color(0xFF3f08a6))),
  );
}
