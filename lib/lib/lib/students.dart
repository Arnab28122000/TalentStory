import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: <Widget>[
            profile(),
            profile(),
            profile(),
            profile(),
            profile(),
            profile(),
            profile(),
            profile(),
            profile(),
            profile(),
          ],
        ),
      ),
    );
  }

  Widget profile() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Text(
                "Student name",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "About: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut mauris scelerisque, semper tellus sed, bibendum sem. Sed id rutrum nibh. Donec ornare at tortor at porta. Fusce fringilla quis felis in varius.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "More about students profile: Fusce fringilla quis felis in varius.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
