import 'dart:math';

import 'package:coding_class_functionaltiy/AssignedDocuments.dart';
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
            child: ElevatedButton(
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
            child: ElevatedButton(
                onPressed: () {
                  print("pressed");
                },
                child: Text("completed")),
          )
        ],
      ),
      // body: Container(
      //   height: 100,
      //   width: MediaQuery.of(context).size.width,
      //   child: Row(
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(50, 10, 20, 0.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               print("pressed assigned");
      //             },
      //             child: Text(
      //               "Assigned",
      //               style: TextStyle(
      //                 fontSize: 20,
      //               ),
      //             )),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(50, 10, 20, 0.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               print("pressed assigned");
      //             },
      //             child: Text(
      //               "Complete",
      //               style: TextStyle(
      //                 fontSize: 20,
      //               ),
      //             )),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Column(
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(6.0),
      //       child: GestureDetector(
      //           onTap: () {
      //             print("pressed Assigned");
      //             setState(() {
      //               final random = Random();
      //               _width = random.nextInt(800).toDouble();
      //               _height = random.nextInt(800).toDouble();
      //             });
      //           },
      //           child: Container(
      //             height: 50,
      //             width: double.infinity,
      //             color: Colors.deepPurple[700],
      //             child: Row(
      //               children: <Widget>[
      //                 Container(
      //                     height: 30,
      //                     width: 30,
      //                     child: Image.asset("images/next.png")),
      //                 Container(
      //                   padding: EdgeInsets.all(8.0),
      //                   child: Text("Assigned",
      //                       style: TextStyle(color: Colors.white)),
      //                 ),
      //               ],
      //             ),
      //           )),
      //     ),
      //     AnimatedContainer(
      //       duration: Duration(microseconds: 250),
      //       width: _width,
      //       height: _height,
      //       color: Colors.grey,
      //       child: AssignedAssignment(),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(6.0),
      //       child: GestureDetector(
      //           onTap: () {
      //             print("pressed completed");
      //             AssignedAssignment();
      //           },
      //           child: Container(
      //             height: 50,
      //             width: double.infinity,
      //             color: Colors.deepPurple[700],
      //             child: Row(
      //               children: <Widget>[
      //                 Container(
      //                     height: 30,
      //                     width: 30,
      //                     child: Image.asset("images/next.png")),
      //                 Container(
      //                   padding: EdgeInsets.all(8.0),
      //                   child: Text("Completed",
      //                       style: TextStyle(color: Colors.white)),
      //                 ),
      //               ],
      //             ),
      //           )),
      //     ),
      //   ],
      // ),
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
