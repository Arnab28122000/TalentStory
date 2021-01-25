import 'package:flutter/material.dart';

class MyArts extends StatefulWidget {
  @override
  _MyArtsState createState() => _MyArtsState();
}

class _MyArtsState extends State<MyArts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: <Widget>[
            academys("Kuchipudi"),
            academys("Kathak"),
            academys("Flute"),
            academys("Xylophone"),
            academys(
              "Sopranino",
            ),
            academys("Musti Yuddha"),
            academys("Mixed Martial Arts"),
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
