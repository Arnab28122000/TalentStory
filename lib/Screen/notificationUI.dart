import 'package:TalentBook/RefScreens/Connector.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notificationUI extends StatefulWidget {
  @override
  _notificationUIState createState() => _notificationUIState();
}

class _notificationUIState extends State<notificationUI> {
  Widget all(String s) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.notification_important),
              title: Text('notification'),
              dense: true,
              trailing: Text('3 hours ago'),
              // isThreeLine: true,
              isThreeLine: true,
              subtitle: Text('pankaj sent a request'),
            ),
          );
        });
  }

  Widget review(String s) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.notification_important),
              title: Text('Sent a request'),
              dense: true,
              trailing: Text('4 hours ago'),
              isThreeLine: true,
              subtitle: Text('pankaj sent a request'),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3f08a6),
          title: Text(
            'Notifications',
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 23),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('All'),
              ),
              Tab(
                child: Text('Review'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            all('All'),
            review('Review'),
          ],
        ),
      ),
    );
  }
}
