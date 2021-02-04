import 'package:flutter/material.dart';

class classRoom extends StatefulWidget {
  @override
  _classRoomState createState() => _classRoomState();
}

class _classRoomState extends State<classRoom> {
  TextEditingController messageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.deepPurple[700],
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message.....",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("msg sent");
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(Icons.send),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
