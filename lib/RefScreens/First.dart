import 'package:flutter/material.dart';

class S1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Talent Technological Services',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple.shade400,
      ),
      body: Container(
        //margin: EdgeInsets.only(top: 20),
        width: width,
        height: height,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Are you A",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            GestureDetector(
              child: Container(
                height: 75,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('K12 student/Parent',
                      style: TextStyle(
                          fontSize: 25, color: Colors.purple.shade400)),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: 75,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('School Teacher',
                      style: TextStyle(
                          fontSize: 25, color: Colors.purple.shade400)),
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
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Skilled Professional/ Trainer',
                      style: TextStyle(
                          fontSize: 25, color: Colors.purple.shade400)),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 190),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.purple.shade400,
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
