import 'package:coding_class_functionaltiy/tileCIrriculum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class curriculum extends StatefulWidget {
  @override
  _curriculumState createState() => _curriculumState();
}

class _curriculumState extends State<curriculum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3.0,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                color: Colors.white,
                height: 150,
                width: MediaQuery.of(context).size.width,
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
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Chapter 1-", //the number 1 needs to be the index
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Why We Programe", //the number 1 needs to be the index
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Text(
                              "These are the course-wide materials as well"
                              "as the.",
                              // overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              maxLines: 3,
                            ),
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
                                    Text("7 Videos"),
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
                                      Text("2 Hours to complete"),
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
