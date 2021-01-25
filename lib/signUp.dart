import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign1 extends StatefulWidget {
  @override
  _Sign1State createState() => _Sign1State();
}

class _Sign1State extends State<Sign1> {
  bool _rememberMe = false;
  bool _rememberMe1 = false;
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
          // body: Form(
          //   key: _formKey,
          //   child:
          Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.purple.shade100,
          // gradient: LinearGradient(
          //     begin: Alignment.centerRight,
          //     end: Alignment(-1.0, 1.0),
          //  colors: [Colors.purple.shade400, Colors.purple.shade300])),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 50.0),
              //   child: Image.asset(
              //     'Assets/Pics/logo1.png',
              //     width: 80,
              //     height: 80,
              //   ),
              // ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0, top: 20),
                child: Text(
                  'Signup',
                  style: GoogleFonts.fredokaOne(
                      color: Colors.black87, fontSize: 35),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Container(
                          width: 150,
                          height: 50,
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter First Name";
                              }
                              return null;
                            },
                            textDirection: TextDirection.ltr,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'First Name',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.purple,
                              ),
                            ),
                            controller: _controller,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.purple)),

                          //,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter Last Name";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Last Name',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purple,
                            ),
                          ),
                          controller: _controller1,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purple)),

                        //,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 40),
                    child: Container(
                      width: 300,
                      height: 55,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter Mobile Number";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.confirmation_number,
                            color: Colors.purple,
                          ),
                        ),
                        controller: _controller2,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.purple)),

                      //,
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 70,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text('Male',
                                  style: GoogleFonts.fredokaOne(
                                      color: Colors.black45, fontSize: 25)),
                            ),
                            Checkbox(
                              value: _rememberMe,
                              activeColor: Colors.purple,
                              checkColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value;
                                });
                              },
                            )
                          ],
                        ),
                        // decoration:
                        //     BoxDecoration(border: Border.all(color: Colors.purple)),
                      ),
                      Container(
                        width: 150,
                        height: 70,
                        child: Row(
                          children: [
                            Text('Female',
                                style: GoogleFonts.fredokaOne(
                                    color: Colors.black45, fontSize: 25)),
                            Checkbox(
                              value: _rememberMe1,
                              activeColor: Colors.purple,
                              checkColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe1 = value;
                                });
                              },
                            )
                          ],
                        ),
                        // decoration:
                        //     BoxDecoration(border: Border.all(color: Colors.purple)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 40),
                    child: Container(
                      width: 300,
                      height: 55,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter Mobile Number";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.confirmation_number,
                            color: Colors.purple,
                          ),
                        ),
                        controller: _controller3,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.purple)),

                      //,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 40),
                    child: Container(
                      width: 300,
                      height: 55,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter Mobile Number";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true, //Added this to hide the passsword
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.confirmation_number,
                            color: Colors.purple,
                          ),
                        ),
                        controller: _controller4,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.purple)),

                      //,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 95.0, top: 60),
                    child: GestureDetector(
                        child: Container(
                          color: Colors.purple[700],
                          height: 40,
                          width: 100,
                          child: Text(
                            'Sign In ',
                            style: GoogleFonts.fredokaOne(
                                color: Colors.black, fontSize: 30),
                          ),
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.purple),
                          //     borderRadius: BorderRadius.circular(10)),
                        ),
                        onTap: () {
                          print("pressed");
                        }
                        //   if (_formKey.currentState.validate()) {
                        //     print("pressed with validation of all");
                        //   }
                        // },
                        ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//   Widget name() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         //mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 2.0),
//                 child: Container(
//                   width: 150,
//                   height: 50,
//                   child: TextFormField(
//                     validator: (value) {
//                       if (value.isEmpty) {
//                         return "Please enter First Name";
//                       }
//                       return null;
//                     },
//                     textDirection: TextDirection.ltr,
//                     keyboardType: TextInputType.name,
//                     decoration: InputDecoration(
//                       hintText: 'First Name',
//                       border: InputBorder.none,
//                       prefixIcon: Icon(
//                         Icons.person,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     controller: _controller,
//                   ),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: Colors.purple)),

//                   //,
//                 ),
//               ),
//               Container(
//                 width: 150,
//                 height: 50,
//                 child: TextFormField(
//                   validator: (value) {
//                     if (value.isEmpty) {
//                       return "Please enter Last Name";
//                     }
//                     return null;
//                   },
//                   keyboardType: TextInputType.name,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Last Name',
//                     prefixIcon: Icon(
//                       Icons.person,
//                       color: Colors.purple,
//                     ),
//                   ),
//                   controller: _controller1,
//                 ),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     border: Border.all(color: Colors.purple)),

//                 //,
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 40.0, right: 40),
//             child: Container(
//               width: 300,
//               height: 55,
//               child: TextFormField(
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return "Please enter Mobile Number";
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   hintText: 'Mobile Number',
//                   border: InputBorder.none,
//                   prefixIcon: Icon(
//                     Icons.confirmation_number,
//                     color: Colors.purple,
//                   ),
//                 ),
//                 controller: _controller2,
//               ),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.purple)),

//               //,
//             ),
//           ),
//           Row(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 150,
//                 height: 70,
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40.0),
//                       child: Text('Male',
//                           style: GoogleFonts.fredokaOne(
//                               color: Colors.black45, fontSize: 25)),
//                     ),
//                     Checkbox(
//                       value: _rememberMe,
//                       activeColor: Colors.purple,
//                       checkColor: Colors.white,
//                       onChanged: (value) {
//                         setState(() {
//                           _rememberMe = value;
//                         });
//                       },
//                     )
//                   ],
//                 ),
//                 // decoration:
//                 //     BoxDecoration(border: Border.all(color: Colors.purple)),
//               ),
//               Container(
//                 width: 150,
//                 height: 70,
//                 child: Row(
//                   children: [
//                     Text('Female',
//                         style: GoogleFonts.fredokaOne(
//                             color: Colors.black45, fontSize: 25)),
//                     Checkbox(
//                       value: _rememberMe1,
//                       activeColor: Colors.purple,
//                       checkColor: Colors.white,
//                       onChanged: (value) {
//                         setState(() {
//                           _rememberMe1 = value;
//                         });
//                       },
//                     )
//                   ],
//                 ),
//                 // decoration:
//                 //     BoxDecoration(border: Border.all(color: Colors.purple)),
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, right: 40),
//             child: Container(
//               width: 300,
//               height: 55,
//               child: TextFormField(
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return "Please enter Mobile Number";
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   border: InputBorder.none,
//                   prefixIcon: Icon(
//                     Icons.confirmation_number,
//                     color: Colors.purple,
//                   ),
//                 ),
//                 controller: _controller3,
//               ),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.purple)),

//               //,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, right: 40),
//             child: Container(
//               width: 300,
//               height: 55,
//               child: TextFormField(
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return "Please enter Mobile Number";
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: true, //Added this to hide the passsword
//                 decoration: InputDecoration(
//                   hintText: 'Confirm Password',
//                   border: InputBorder.none,
//                   prefixIcon: Icon(
//                     Icons.confirmation_number,
//                     color: Colors.purple,
//                   ),
//                 ),
//                 controller: _controller4,
//               ),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.purple)),

//               //,
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 95.0, top: 60),
//             child: GestureDetector(
//               child: Container(
//                 color: Colors.purple[700],
//                 height: 40,
//                 width: 100,
//                 child: Text(
//                   'Sign In ',
//                   style:
//                       GoogleFonts.fredokaOne(color: Colors.black, fontSize: 30),
//                 ),
//                 // decoration: BoxDecoration(
//                 //     border: Border.all(color: Colors.purple),
//                 //     borderRadius: BorderRadius.circular(10)),
//               ),
//               onTap: () {
//                 if (_formKey.currentState.validate()) {
//                   print("pressed with validation of all");
//                 }
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
}