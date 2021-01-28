import 'package:flutter/material.dart';

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(//itemCount: 5,
        itemBuilder: (
      BuildContext context,
      int index,
    ) {
      return ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(8),
            leading: Icon(Icons.ac_unit),
            title: Text('Ojas'),
          )
        ],
      );
    });
  }
}
