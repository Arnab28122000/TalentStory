import 'package:TalentBook/RefScreens/AssignedDocuments.dart';
import 'package:flutter/material.dart';
import 'UploadDocuments.dart';

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  // double _width = 0;
  // double _height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
                color: const Color(0xFF531cba),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AssignedDocuments()));
                },
                child: Text("Assigned")),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
                color: const Color(0xFF531cba),
                onPressed: () {
                  print("pressed");
                },
                child: Text("completed")),
          )
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                print("pressed upload documents");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpLoadDocuments()));
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
