import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160.0),
              child: Text(
                'Error',
                style: GoogleFonts.roboto(
                    fontSize: 80,
                    decoration: TextDecoration.none,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Text(
                'It seems that you are lost in a perpetual black hole. Let us help guide you back to home',
                style: GoogleFonts.roboto(
                    fontSize: 22,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
            Image.asset('Assets/Pics/Error.png'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Back',
                    style: GoogleFonts.roboto(fontSize: 17),
                  ),
                  color: Colors.purple.shade100,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => UIAnim()));
                  },
                  child: Text(
                    'Home',
                    style: GoogleFonts.roboto(fontSize: 17),
                  ),
                  color: Colors.purple.shade100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
