import 'package:flutter/material.dart';

class tile extends StatefulWidget {
  @override
  _tileState createState() => _tileState();
}

class _tileState extends State<tile> {
  TextEditingController chapterdescriptionController =
      new TextEditingController();
  TextEditingController chapterNameController = new TextEditingController();
  TextEditingController weekController = new TextEditingController();
  TextEditingController numberVideoController = new TextEditingController();
  TextEditingController hoursController = new TextEditingController();

  int count = 1;

  // Widget tileMaker() {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Container(
  //       height: 250,
  //       width: MediaQuery.of(context).size.width,
  //       color: Colors.grey,
  //       alignment: Alignment.center,
  //       child: Column(
  //         children: <Widget>[
  //           TextField(
  //             controller: weekController,
  //             decoration: InputDecoration(
  //                 hintText: "WEEK Number", icon: Icon(Icons.book)),
  //             keyboardType: TextInputType.number,
  //           ),
  //           TextField(
  //             controller: chapterNameController,
  //             decoration: InputDecoration(
  //                 hintText: "Chapter Name", icon: Icon(Icons.book)),
  //           ),
  //           TextField(
  //             controller: chapterdescriptionController,
  //             decoration: InputDecoration(
  //                 hintText: "Description", icon: Icon(Icons.book)),
  //             keyboardType: TextInputType.multiline,
  //           ),
  //           TextField(
  //             controller: numberVideoController,
  //             decoration: InputDecoration(
  //                 hintText: "Number Of Videos", icon: Icon(Icons.video_call)),
  //             keyboardType: TextInputType.number,
  //           ),
  //           TextField(
  //             controller: hoursController,
  //             decoration: InputDecoration(
  //               hintText: "Number of hours required",
  //               icon: Icon(Icons.timelapse_rounded),
  //             ),
  //             keyboardType: TextInputType.number,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  tileData() {
    Map<String, dynamic> userData = {
      "Week Number": weekController.text,
      "Chapter Name": chapterNameController.text,
      "Description": chapterdescriptionController.text,
      "Number Of Videos": numberVideoController.text,
      "Number of hours required": hoursController.text,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIle"),
      ),
      body: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            return tileMakerr();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          count++;
          print("count pressed");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class tileMakerr extends StatelessWidget {
  TextEditingController chapterdescriptionController =
      new TextEditingController();
  TextEditingController chapterNameController = new TextEditingController();
  TextEditingController weekController = new TextEditingController();
  TextEditingController numberVideoController = new TextEditingController();
  TextEditingController hoursController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            TextField(
              controller: weekController,
              decoration: InputDecoration(
                  hintText: "WEEK Number", icon: Icon(Icons.book)),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: chapterNameController,
              decoration: InputDecoration(
                  hintText: "Chapter Name", icon: Icon(Icons.book)),
            ),
            TextField(
              controller: chapterdescriptionController,
              decoration: InputDecoration(
                  hintText: "Description", icon: Icon(Icons.book)),
              keyboardType: TextInputType.multiline,
            ),
            TextField(
              controller: numberVideoController,
              decoration: InputDecoration(
                  hintText: "Number Of Videos", icon: Icon(Icons.video_call)),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: hoursController,
              decoration: InputDecoration(
                hintText: "Number of hours required",
                icon: Icon(Icons.timelapse_rounded),
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
