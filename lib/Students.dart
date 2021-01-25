import 'package:flutter/material.dart';

class students extends StatefulWidget {
  @override
  _studentsState createState() => _studentsState();
}

class _studentsState extends State<students> {
  @override
  Widget build(BuildContext context) {
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
              child: Container(
                //margin: EdgeInsets.all(8.0),
                // decoration: BoxDecoration(
                //     // color: Colors.deepPurple[100],
                //     border: Border.all(color: Colors.black),
                //     borderRadius: BorderRadius.all(Radius.circular(9))),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Icon(
                          Icons.photo,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 200,
                        // color: Colors.deepPurple[100],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                "Raj",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text("Grade 6",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 3,
                            ),
                            Text("DElhi Public School",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),

                    //Add as a friend

                    // GestureDetector(
                    //   onTap: () {
                    //     //Add as a friend
                    //   },
                    //   child: Container(
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
            ),
          );
        });
  }
}
