import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_button/sleek_button.dart';

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
                style:
                    GoogleFonts.fredokaOne(color: Colors.black, fontSize: 28),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 68,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('K12 Student/Parent',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {},
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
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('School Teacher',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {},
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
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Skilled Professional/Trainer',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {},
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
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text('School Management',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 60,
            ),
            SleekButton(
              child: Text('Next',
                  style: GoogleFonts.fredokaOne(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
              style: SleekButtonStyle.outlined(
                  context: context, borderWidth: 3, color: Colors.purple),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
