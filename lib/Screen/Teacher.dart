import 'package:TalentBook/RefScreens/First.dart';
import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

// ignore: camel_case_types
class teacher extends StatefulWidget {
  @override
  _teacherState createState() => _teacherState();
}

TextEditingController _controller = new TextEditingController();

String valuechoose, valuechoose1;
List listitem = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
List listitem1 = [
  "English",
  "Mathematics",
  "Tamil",
  "Telgu",
  "Science",
  "Social Studies",
  "Hindi",
  "Sanskrit"
];

// ignore: camel_case_types
class _teacherState extends State<teacher> {
  TextEditingController _controller = new TextEditingController();
  Widget _buildLoginBtn() {
    return Container(
      // padding: EdgeInsets.(vertical: 25.0),
      width: 90,
      height: 40,
      child: Center(
          child: Text(
        'Previous',
        style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w500),
      )),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(9.5)),
    );
  }

  Widget _buildLoginBtn1() {
    return Container(
      // padding: EdgeInsets.(vertical: 25.0),
      width: 80,
      height: 40,
      child: Center(
          child: Text(
        'Save',
        style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w500),
      )),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(9.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text('Select your category',
                  style: GoogleFonts.roboto(fontSize: 25)),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 95),
                  child: Text('Select your grade',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 17)),
                ),
                DropdownButton(
                  hint: Text('Add your grade'),
                  items: listitem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                  value: valuechoose,
                  onChanged: (value) {
                    setState(() {
                      valuechoose = value;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 50),
                  child: Text('Select your\nsubject',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 17)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: DropdownButton(
                    hint: Text('Subject'),
                    items: listitem1.map((valueItem1) {
                      return DropdownMenuItem(
                        value: valueItem1,
                        child: Text(valueItem1),
                      );
                    }).toList(),
                    value: valuechoose1,
                    onChanged: (value) {
                      setState(() {
                        valuechoose1 = value;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 50),
                  child: Text('Qualification',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 17)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: DropdownButton(
                    items: [],
                    hint: Text('Education'),
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50.0, left: 15),
                  child: Text('Experience',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 17)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 75.0),
                  child: DropdownButton(
                    hint: Text('Years'),
                    items: [],
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: _buildLoginBtn(),
                      onTap: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_left,
                            builder: (context) => S1()));
                      },
                    ),
                    GestureDetector(
                      child: _buildLoginBtn1(),
                      onTap: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => UIAnim()));
                      },
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
