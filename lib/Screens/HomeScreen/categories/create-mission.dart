import 'package:flutter/material.dart';
import 'package:flutter_multiselect/flutter_multiselect.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/mission.dart';

class CreateMission extends StatefulWidget {
  @override
  _CreateMissionState createState() => _CreateMissionState();
}

class _CreateMissionState extends State<CreateMission> {
  final _nameformKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _targetformKey = GlobalKey<FormState>();
  final _targetController = TextEditingController();
  final _milestoneformKey = GlobalKey<FormState>();
  final _milestoneController = TextEditingController();
  var _selectedTimePeriod;
  List<String> _timePeriod = <String>[
    '10 days',
    '15 days',
    '1 week',
    '2 weeks',
    '1 month',
    '2 months',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          "Create Mission",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Mission()),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          nameOfMission(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 38.0),
            child: Card(
              elevation: 3.0,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      "Time Period",
                      style: TextStyle(
                          color: Colors.deepPurple[700], fontSize: 20.0),
                    ),
                  ),
                  Icon(
                    Icons.timelapse,
                    color: Colors.deepPurple[700],
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  timePeriod(),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          targetOfMission(),
          SizedBox(height: 10),
          assignTask(),
          SizedBox(height: 30),
          setMilestone(),
          SizedBox(height: 50),
          createButton(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget nameOfMission() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23.0, 0.0, 23.0, 0.0),
      child: Form(
        key: _nameformKey,
        child: TextFormField(
          maxLines: 1,
          textInputAction: TextInputAction.next,
          obscureText: false,
          keyboardType: TextInputType.text,
          // ignore: missing_return
          validator: (value) {
            if (value.isEmpty) {
              return "required";
            } else {}
          },
          controller: _nameController,
          decoration: InputDecoration(
            labelText: "Mission Name",
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

  Widget assignTask() {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
      child: MultiSelect(
          autovalidate: true,
          titleText: "Assign Task",
          hintTextColor: Colors.white,
          titleTextColor: Colors.white,
          cancelButtonTextColor: Colors.white,
          searchBoxColor: Colors.deepPurple[700],
          validator: (value) {
            if (value == null) {
              return 'Please select one or more Student(s)';
            }
          },
          errorText: 'Please select one or more Student(s)',
          dataSource: [
            {
              "display": "Student 1",
              "value": 1,
            },
            {
              "display": "Student 2",
              "value": 2,
            },
            {
              "display": "Student 3",
              "value": 3,
            },
            {
              "display": "Student 4",
              "value": 4,
            },
            {
              "display": "Student 5",
              "value": 5,
            },
            {
              "display": "Student 6",
              "value": 6,
            },
            {
              "display": "Student 7",
              "value": 7,
            },
            {
              "display": "Student 8",
              "value": 8,
            },
            {
              "display": "Student 9",
              "value": 9,
            },
            {
              "display": "Student 10",
              "value": 10,
            },
          ],
          saveButtonColor: Colors.deepPurple[700],
          inputBoxFillColor: Colors.deepPurple[700],
          enabledBorderColor: Colors.deepPurple[700],
          checkBoxColor: Colors.deepPurple[700],
          cancelButtonColor: Colors.deepPurple[700],
          buttonBarColor: Colors.deepPurple[700],
          textField: 'display',
          valueField: 'value',
          filterable: true,
          required: true,
          clearButtonColor: Colors.deepPurple[700],
          clearButtonTextColor: Colors.white,
          value: null,
          onSaved: (value) {
            print('The value is $value');
          }),
    );
  }

  Widget targetOfMission() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23.0, 0.0, 23.0, 0.0),
      child: Form(
        key: _targetformKey,
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
          controller: _targetController,
          decoration: InputDecoration(
            labelText: "Target of Mission",
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

  Widget createButton() {
    return RaisedButton(
      color: Colors.deepPurple[700],
      onPressed: () {
        if (_milestoneformKey.currentState.validate() &&
            _nameformKey.currentState.validate() &&
            _targetformKey.currentState.validate()) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 30.0, 0.0, 0.0),
                    child: new Text(
                      'Mission created!',
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

  Widget timePeriod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: DropdownButton(
            items: _timePeriod
                .map((value) => DropdownMenuItem(
                      child: Text(
                        value,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[700]),
                      ),
                      value: value,
                    ))
                .toList(),
            onChanged: (selectedtime) {
              setState(() {
                _selectedTimePeriod = selectedtime;
              });
            },
            value: _selectedTimePeriod,
            hint: Text(
              "Select Duration",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blueGrey[200]),
            ),
            elevation: 5,
            isExpanded: false,
          ),
        ),
      ],
    );
  }
}
