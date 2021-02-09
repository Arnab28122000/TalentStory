import 'package:coding_class_functionaltiy/tileCIrriculum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class curriculum extends StatefulWidget {
  @override
  _curriculumState createState() => _curriculumState();
}

class _curriculumState extends State<curriculum> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 3.0, 2.0, 3.0),
              child: Card(
                elevation: 3.0,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: width * 0.95,
                  height: height * 0.20,
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              "WEEK",
                              style: GoogleFonts.averageSans(
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ),
                          Text("${index + 1}",
                              style: GoogleFonts.average(
                                  textStyle: TextStyle(
                                      fontSize: 45,
                                      color: Colors.purple[700]))),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(2.0, 6.0, 2.0, 2.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Chapter ${index + 1}-", //the number 1 needs to be the index
                                  style: GoogleFonts.average(
                                      textStyle: TextStyle(fontSize: 18)),
                                ),
                                Text(
                                  "Why We Programe", //the number 1 needs to be the index
                                  style: GoogleFonts.average(
                                      textStyle: TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "These are the course-wide materials as well"
                              "as the.ascbsdcbsdhcsdhcjbsacdsacsdcs cvshdcbsnvbcsbvsbn",
                              style: GoogleFonts.averageSans(),
                              // overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              maxLines: 3,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                children: <Widget>[
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.video_call,
                                        color: Colors.purple,
                                      ),
                                      Text("7 Videos",
                                          style: GoogleFonts.averageSans(
                                            textStyle: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.timelapse_rounded,
                                          color: Colors.purple,
                                        ),
                                        Text("2 Hours to complete",
                                            style: GoogleFonts.averageSans(
                                              textStyle: TextStyle(
                                                fontSize: 15,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ), //Name of the chapter
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Action button");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tile()));
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
