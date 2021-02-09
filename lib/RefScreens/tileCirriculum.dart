import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  // int count = 1;

  String newValue;

  bool dropDownList = true;

  var dropDownNewValue = "0";

  var weeks = ["0", "1", "2", "3", "4", "5", "6", "7", "8", " 9", "10"];

  Widget DropDownList() {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Select the numbers of week",
            style: GoogleFonts.average(textStyle: TextStyle(fontSize: 30)),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButton(
            hint: Text("WEEK"),
            items: weeks.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                  value: dropDownStringItem, child: Text(dropDownStringItem));
            }).toList(),
            onChanged: (String newValueSelected) {
              setState(() {
                this.dropDownNewValue = newValueSelected;
                dropDownList = false;
              });
            },
            value: dropDownNewValue,
          ),
        ],
      ),
    );
  }

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
          backgroundColor: const Color(0xFF3f08a6),
        ),
        body: dropDownList
            ? DropDownList()
            : ListView.builder(
                itemCount: int.parse(dropDownNewValue),
                itemBuilder: (context, index) {
                  return TileMaker(weekCounter: index);
                })
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       count = count + 1;
        //     });

        //     print("count pressed");
        //   },
        //   child: Icon(Icons.add),
        // ),
        );
  }
}

class TileMaker extends StatelessWidget {
  int weekCounter;
  TileMaker({@required this.weekCounter});

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
        // height: 280,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              "WEEK ${weekCounter + 1}",
              style: GoogleFonts.average(
                  textStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ), //week counter need to be plus 1
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

// class DropDownList extends StatefulWidget {
//   @override
//   _DropDownListState createState() => _DropDownListState();
// }

// class _DropDownListState extends State<DropDownList> {
//   bool dropDownList = false;
//   var dropDownNewValue = "0";

//   var weeks = ["0", "1", "2", "3", "4", "5", "6", "7", "8", " 9", "10"];

//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(18.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             "Select the numbers of week",
//             style: GoogleFonts.average(textStyle: TextStyle(fontSize: 30)),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           DropdownButton(
//             items: weeks.map((String dropDownStringItem) {
//               return DropdownMenuItem<String>(
//                   value: dropDownStringItem, child: Text(dropDownStringItem));
//             }).toList(),
//             onChanged: (String newValueSelected) {
//               setState(() {
//                 this.dropDownNewValue = newValueSelected;
//                 dropDownList = true;
//               });
//             },
//             value: dropDownNewValue,
//           ),
//         ],
//       ),
//     );
//   }
// }
