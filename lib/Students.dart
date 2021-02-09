import 'package:coding_class_functionaltiy/CommomWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class students extends StatefulWidget {
  @override
  _studentsState createState() => _studentsState();
}

class _studentsState extends State<students> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width * 0.30,
                      height: height * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Icon(
                        Icons.photo,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),

                    // child: Container(
                    //   width: 170,
                    // color: Colors.deepPurple[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                            child: fontStyle(
                              "Raj",
                            )),
                        SizedBox(
                          height: 3,
                        ),
                        fontStyle("Grade 6"),

                        SizedBox(
                          height: 3,
                        ),
                        fontStyleforSchool("Delhi Public School"),
                        // Text("DElhi Public School",
                        //     style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  //Add as a friend

                  // InkWell(
                  //   splashColor: Colors.grey.withAlpha(30),
                  //   onTap: () {
                  //     //Add as a friend
                  //   },
                  //   child: Container(
                  //     height: 30,
                  //     width: 20,
                  //     //color: Colors.blue,
                  //     child: Icon(
                  //       Icons.add_circle_rounded,
                  //       color: Colors.deepPurple[700],
                  //     ),
                  //   ),
                  // ),

                  //TODO Unfriend icon is to be made

                  // Container(
                  //     child: Icon(
                  //   Icons.delete,
                  //   color: Colors.deepPurple[700],
                  // )),

                  //Is already a friend
                  InkWell(
                    splashColor: Colors.grey.withAlpha(30),
                    onTap: () {
                      print("pressed");
                    },
                    child: Container(
                      height: 30,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: Colors.white,
                      ),
                      child: Image.asset("images/checked.png"),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
