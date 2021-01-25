import 'package:flutter/material.dart';
import 'package:talentbook/mission.dart';
import 'package:talentbook/reviews.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final _taskformKey = GlobalKey<FormState>();
  final _taskController = TextEditingController();
  final _milestoneformKey = GlobalKey<FormState>();
  final _milestoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Task",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Reviews()),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          nameOfTask(),
          SizedBox(height: 30),
          setMilestone(),
          SizedBox(height: 40),
          createTaskButton(),
        ],
      ),
    );
  }

  Widget createTaskButton() {
    return RaisedButton(
      color: Colors.deepPurple[700],
      onPressed: () {
        if (_milestoneformKey.currentState.validate() &&
            _taskformKey.currentState.validate()) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 30.0, 0.0, 0.0),
                    child: new Text(
                      'Task created!',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurple[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  actions: [
                    new FlatButton(
                      child: new Text(
                        'Ok',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.deepPurple[700],
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return Mission();
                        }));
                      },
                    ),
                  ],
                );
              });
        } else {}
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
            "Create",
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

  Widget nameOfTask() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23.0, 0.0, 23.0, 0.0),
      child: Form(
        key: _taskformKey,
        child: TextFormField(
          maxLines: 1,
          textInputAction: TextInputAction.next,
          obscureText: false,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return "required";
            } else {}
          },
          controller: _taskController,
          decoration: InputDecoration(
            labelText: "Task Name",
            labelStyle: TextStyle(
                color: Colors.deepPurple[700], fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide: BorderSide(color: Colors.deepPurple[700]),
            ),
          ),
        ),
      ),
    );
  }

  Widget setMilestone() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23.0, 0.0, 23.0, 0.0),
      child: Form(
        key: _milestoneformKey,
        child: TextFormField(
          maxLines: 1,
          textInputAction: TextInputAction.done,
          obscureText: false,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value.isEmpty) {
              return "required";
            } else {}
          },
          controller: _milestoneController,
          decoration: InputDecoration(
            labelText: "Set Milestone",
            labelStyle: TextStyle(
                color: Colors.deepPurple[700], fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide: BorderSide(color: Colors.deepPurple[700]),
            ),
          ),
        ),
      ),
    );
  }
}
