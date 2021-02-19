import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us',
            style: GoogleFonts.roboto(fontSize: 23, color: Colors.white)),
        backgroundColor: Color(0xff3f08a6),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'Assets/Pics/about.png',
            ),
          ],
        ),
      ),
    );
  }
}
