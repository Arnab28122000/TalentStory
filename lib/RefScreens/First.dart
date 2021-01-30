import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class S1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3f08a6),
        leading: Image.asset('Assets/Pics/logo1.png'),
      ),
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
                "Are you A",
                style:
                    GoogleFonts.fredokaOne(color: Colors.black, fontSize: 28),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 68,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('K12 student/Parent',
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
                width: 230,
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
                height: 70,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('School Managment',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 190),
              child: Container(
                width: 95,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.purple)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
