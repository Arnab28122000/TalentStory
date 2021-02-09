import 'package:TalentBook/RefScreens/First.dart';
import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

// ignore: camel_case_types
class manage extends StatefulWidget {
  @override
  _manageState createState() => _manageState();
}

// ignore: camel_case_types
class _manageState extends State<manage> {
  TextEditingController _schoolController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _cityController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var stateSelected;
  var dropDownValue;

  var states = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu and Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttarakhand',
    'Uttar Pradesh',
    'West Bengal',
    'Andaman and Nicobar Islands',
    'Chandigarh',
    'Dadra and Nagar Haveli',
    'Daman and Diu',
    'Delhi',
    'Lakshadweep',
    'Puducherry',
  ];

  formData() {
    Map<String, dynamic> userData = {
      "School Name": _schoolController.text,
      "Contact Number": _phoneController.text,
      "Email": _emailController.text,
      "Address ": _addressController.text
    };
    print(userData);
  }

  // Widget schoolManagementTextField(labelTextInfo, hintTextForField) {
  //   return TextFormField(
  //     keyboardType: TextInputType.name,
  //     decoration: InputDecoration(
  //       fillColor: Colors.grey[200],
  //       filled: true,
  //       labelText: labelTextInfo,
  //       labelStyle: TextStyle(
  //         color: Colors.purple,
  //       ),
  //       border: OutlineInputBorder(
  //           borderSide: BorderSide.none,
  //           borderRadius: BorderRadius.circular(9)),
  //     ),
  //   );
  // }

  // outLineTextField(labelTextInfo) {
  //   return InputDecoration(
  //     fillColor: Colors.grey[200],
  //     filled: true,
  //     labelText: labelTextInfo,
  //     labelStyle: TextStyle(
  //       color: Colors.purple,
  //     ),
  //     border: OutlineInputBorder(
  //         borderSide: BorderSide.none, borderRadius: BorderRadius.circular(9)),
  //   );
  // }

  Widget _buildLoginBtn() {
    return InkWell(
      child: Container(
        // padding: EdgeInsets.(vertical: 25.0),
        width: 70,
        height: 40,
        child: Center(child: Icon(Icons.arrow_back)
            //     Text(
            //   'Previous',
            //   style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w500),
            // )
            ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple),
            borderRadius: BorderRadius.circular(9.5)),
      ),
      onTap: () {
        Navigator.of(context).push(PageRouteTransition(
            animationType: AnimationType.slide_left,
            builder: (context) => S1()));
      },
    );
  }

  Widget _buildLoginBtn1() {
    return InkWell(
      onTap: () {
        if (_formKey.currentState.validate()) {
          formData();
        }
      },
      child: InkWell(
        child: Container(
          // padding: EdgeInsets.(vertical: 25.0),
          width: 70,
          height: 40,
          child: Center(
              child: Text(
            'Save',
            style:
                GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w500),
          )),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple),
              borderRadius: BorderRadius.circular(9.5)),
        ),
        onTap: () {
          Navigator.of(context).push(PageRouteTransition(
              animationType: AnimationType.slide_right,
              builder: (context) => UIAnim()));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Management',
            style: GoogleFonts.roboto(
              fontSize: 27,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // decoration: BoxDecoration(border: Border.all(color: Colors.purple),
          // ),
          child: Form(
            key: _formKey,
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 40,
                  // ),
                  // Center(
                  //   child: Text('School Management',
                  //       style: GoogleFonts.roboto(fontSize: 27)),
                  // ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  // Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: [
                  //   Padding(
                  //     padding: const EdgeInsets.only(left: 10.0),
                  //     child:
                  //     Text('School\nName',
                  //         style: GoogleFonts.roboto(
                  //             color: Colors.black, fontSize: 17)),
                  //   ),
                  // Container(
                  //   width: 300,
                  //   height: 50,
                  // child:
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _schoolController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter Full Name";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "School Name",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                        ),
                        // hintText: 'Enter your school name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(9)),
                        prefixIcon: Icon(
                          Icons.school,
                          color: Color(0xff3f08a6),
                        ),
                      ),
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(color: Colors.purple)),

                  //,
                  // ),
                  // ],
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('State',
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 17)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65.0),
                        child: DropdownButton(
                          value: dropDownValue,
                          hint: Text('Select your State'),
                          onChanged: (stateSelected) {
                            setState(() {
                              dropDownValue = stateSelected;
                              print(dropDownValue);
                            });
                          },
                          items: states.map((String stateSelected) {
                            return DropdownMenuItem(
                                value: stateSelected,
                                child: Text(stateSelected));
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _cityController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your city ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "City",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(9)),
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: Color(0xff3f08a6),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _addressController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your address  ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "Address",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(9)),
                        prefixIcon: Icon(
                          Icons.map,
                          color: Color(0xff3f08a6),
                        ),
                      ),
                    ),
                  ),

                  // SizedBox(
                  //   height: 30,
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: _phoneController,
                      validator: (value) {
                        if (value.length != 10) {
                          return "Enter a valid phone Number";
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "Contact Number",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(9)),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(0xff3f08a6),
                        ),
                      ),
                    ),
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 10.0),
                  //       child: Text('Contact\nNumber',
                  //           style: GoogleFonts.roboto(
                  //               color: Colors.black, fontSize: 17)),
                  //     ),
                  //     Container(
                  //       width: 300,
                  //       height: 50,
                  //       child: TextField(
                  //         keyboardType: TextInputType.number,
                  //         decoration: InputDecoration(
                  //           hintText: 'Enter your number',
                  //           border: InputBorder.none,
                  //           prefixIcon: Icon(
                  //             Icons.phone,
                  //             color: Color(0xff3f08a6),
                  //           ),
                  //         ),
                  //         controller: _controller,
                  //       ),
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           border: Border.all(color: Colors.purple)),

                  //       //,
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 3,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      validator: (value) {
                        if (!value.contains(".com")) {
                          return 'Please enter valid email Id';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(9)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xff3f08a6),
                        ),
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 8.0),
                  //       child: Text('Official\n Email',
                  //           style: GoogleFonts.roboto(
                  //               color: Colors.black, fontSize: 17)),
                  //     ),
                  //     Container(
                  //       width: 300,
                  //       height: 50,
                  //       child: TextField(
                  //         keyboardType: TextInputType.emailAddress,
                  //         decoration: InputDecoration(
                  //           hintText: 'Enter your email ID',
                  //           border: InputBorder.none,
                  //           prefixIcon: Icon(
                  //             Icons.email,
                  //             color: Color(0xff3f08a6),
                  //           ),
                  //         ),
                  //         controller: _controller,
                  //       ),
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           border: Border.all(color: Colors.purple)),

                  //       //,
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [_buildLoginBtn(), _buildLoginBtn1()]),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
