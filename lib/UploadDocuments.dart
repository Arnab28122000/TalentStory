// import 'dart:html';

import 'dart:io';

// import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class UpLoadDocuments extends StatefulWidget {
  @override
  _UpLoadDocumentsState createState() => _UpLoadDocumentsState();
}

class _UpLoadDocumentsState extends State<UpLoadDocuments> {
  void OpenFielExplorer() async {
    // FilePickerResult result = await FilePicker.platform.pickFiles();
    // if (result != null) {
    //   File file = File(result.files.single.path);
    // }
    FilePickerResult result = await FilePicker.platform.pickFiles();
    if (result != null) {
      PlatformFile file = result.files.first;
      print(file.name);
      print(file.bytes);
      print(file.size);
      print(file.extension);
      print(file.path);
    }
  }

  Widget files(filetobeprinted) {
    return Expanded(
        child: Column(
      children: <Widget>[
        Text(filetobeprinted.name),
        Text(filetobeprinted.bytes),
        Text(filetobeprinted.size),
        Text(filetobeprinted.extension),
        Text(filetobeprinted.path)
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3f08a6),
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
                child: RaisedButton(
                  onPressed: () async {
                    print("pressed");

                    OpenFielExplorer();
                    print("pressed 1");
                    // FilePickerResult result =
                    //     await FilePicker.platform.pickFiles();
                    // if (result != null) {
                    //   PlatformFile file = result.files.first;
                    //   print(file.name);
                    //   print(file.bytes);
                    //   print(file.size);
                    //   print(file.extension);
                    //   print(file.path);
                    //   // files(file);
                    // }
                  },
                  child: Text("Get Documents"),
                )),
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
            ),
          ],
        ),
      ),
    );
  }
}
