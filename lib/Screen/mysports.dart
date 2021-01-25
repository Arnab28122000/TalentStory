import 'package:flutter/material.dart';

class MySports extends StatefulWidget {
  @override
  _MySportsState createState() => _MySportsState();
}

class _MySportsState extends State<MySports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: <Widget>[
            academys("Carroms"),
            academys("Badminton"),
            academys("Chess"),
            academys("Kabbadi"),
            academys("Running"),
            academys("Swimmimg"),
            academys("Snooker/Billards"),
          ],
        ),
      ),
    );
  }

  Widget academys(String topic) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple[50],
                  ),
                  margin: EdgeInsets.all(10),
                  height: 60,
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Text(
                    "Class name",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "Hyderabad",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.deepPurple[700],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0, top: 10),
              child: Text(
                topic,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepPurple[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
