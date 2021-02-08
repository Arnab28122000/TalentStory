import 'package:TalentBook/RefScreens/Second.dart';
import 'package:TalentBook/Screen/SchoolManagement.dart';
import 'package:TalentBook/Screen/Teacher.dart';
import 'package:TalentBook/Screen/professional.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

class S1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.only(top: 20),
        width: width,
        height: height,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            // borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Are you a",
                style: GoogleFonts.roboto(color: Colors.black, fontSize: 28),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Container(
                height: 68,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('K12 Student/Parent',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_right,
                    builder: (context) => K12S2()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: 68,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Center(
                    child: Text('School Teacher',
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_right,
                    builder: (context) => teacher()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: 80,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Skilled Professional/Trainer',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_right,
                    builder: (context) => prof()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: 65,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Center(
                  child: Text('School Management',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_right,
                    builder: (context) => manage()));
              },
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
