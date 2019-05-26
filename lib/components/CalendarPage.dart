import 'package:flutter/material.dart';

/// The CalendarPage class contains a stateless widget that contains
/// information about the weekly class schedule
class CalendarPage extends StatelessWidget {

  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: <Widget>[
                  Text("Monday")
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: <Widget>[
                  Text("Monday")
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: <Widget>[
                  Text("Monday")
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: <Widget>[
                  Text("Monday")
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: <Widget>[
                  Text("Monday")
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}