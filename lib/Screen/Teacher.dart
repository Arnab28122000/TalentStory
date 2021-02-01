import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_button/sleek_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text('Select your category',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Text('Select your grade',
                        style: GoogleFonts.fredokaOne(
                            color: Colors.black, fontSize: 25)),
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
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select your\nsubject',
                      style: GoogleFonts.fredokaOne(
                          color: Colors.black, fontSize: 25)),
                  DropdownButton(
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
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Qualification',
                      style: GoogleFonts.fredokaOne(
                          color: Colors.black, fontSize: 25)),
                  DropdownButton(
                    items: [],
                    hint: Text('Education'),
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text('Experience',
                      style: GoogleFonts.fredokaOne(
                          color: Colors.black, fontSize: 25)),
                ),
                DropdownButton(
                  hint: Text('Years'),
                  items: [],
                  onChanged: (value) {},
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SleekButton(
                      child: Text('Previous',
                          style: GoogleFonts.fredokaOne(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      style: SleekButtonStyle.outlined(
                          context: context,
                          borderWidth: 3,
                          color: Colors.purple),
                      onTap: () {},
                    ),
                    SleekButton(
                      child: Text('Save',
                          style: GoogleFonts.fredokaOne(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      style: SleekButtonStyle.outlined(
                          context: context,
                          borderWidth: 3,
                          color: Colors.purple),
                      onTap: () {},
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
