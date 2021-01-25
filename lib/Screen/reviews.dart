import 'package:TalentBook/Screen/createtask.dart';
import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Center(child: createTaskButton()),
            SizedBox(height: 30),
            Center(
              child: Text(
                "My Tasks",
                style: TextStyle(
                    color: Colors.deepPurple[700],
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 3.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    myTasks(),
                    myTasks(),
                    myTasks(),
                    myTasks(),
                    myTasks(),
                    myTasks(),
                    myTasks(),
                    myTasks(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createTaskButton() {
    return RaisedButton(
      color: Colors.deepPurple[700],
      onPressed: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return CreateTask();
        }));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.deepPurple[700]),
        child: Container(
          color: Colors.deepPurple[700],
          constraints: BoxConstraints(maxWidth: 137.0, maxHeight: 25.0),
          alignment: Alignment.center,
          child: Text(
            "Create Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget myTasks() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Text(
                "Task name",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 240.0,
                top: 10,
              ),
              child: Text(
                "Milstones: number",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Fusce fringilla quis felis in varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut mauris scelerisque, semper tellus sed, bibendum sem. Sed id rutrum nibh. Donec ornare at tortor at porta. Fusce fringilla quis felis in varius.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
