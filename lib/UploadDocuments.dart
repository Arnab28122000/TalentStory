import 'package:flutter/material.dart';

class UpLoadDocuments extends StatefulWidget {
  @override
  _UpLoadDocumentsState createState() => _UpLoadDocumentsState();
}

class _UpLoadDocumentsState extends State<UpLoadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("upload Documents"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              //Function to upload documents to firebase -images/pdf/word/ppt
            },
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: Icon(Icons.upload_file),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.black,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Text("Add Documents"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val) {
                  //title = val;
                },
                decoration: InputDecoration(hintText: "Name of Faculty"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val) {
                  //title = val;
                },
                decoration: InputDecoration(hintText: "Title/Description"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val) {
                  //title = val;
                },
                decoration: InputDecoration(hintText: "Assignment Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val) {
                  //title = val;
                },
                decoration: InputDecoration(hintText: "Due Date"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val) {
                  //title = val;
                },
                decoration: InputDecoration(hintText: "Points"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
