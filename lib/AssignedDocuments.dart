import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UploadDocuments.dart';

class AssignedDocuments extends StatefulWidget {
  @override
  _AssignedDocumentsState createState() => _AssignedDocumentsState();
}

class _AssignedDocumentsState extends State<AssignedDocuments> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text("Assigned"),
      //   backgroundColor: const Color(0xFF3f08a6),
      // ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return InkWell(
              splashColor: Colors.purple.withAlpha(50),
              onTap: () {
                print("pressed");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      // height: 120,
                      // width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Posted - Name Of Faculty",
                              style: GoogleFonts.average(
                                  textStyle: TextStyle(fontSize: 18))),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                            child: Text(
                                "Interpersonal Skills Team Presentation",
                                style: GoogleFonts.average(
                                    textStyle: TextStyle(fontSize: 18))),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Assignment 5",
                              style: GoogleFonts.average(
                                  textStyle: TextStyle(fontSize: 15))),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Due -January 3,2020",
                                  style: GoogleFonts.average(
                                      textStyle: TextStyle(
                                          fontSize: 15, color: Colors.red))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding:
                                      EdgeInsets.fromLTRB(120.0, 0.0, 0.0, 0.0),
                                  child: Text("20 point")),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
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
