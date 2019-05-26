import 'package:flutter/material.dart';

/// The CalendarPage class contains a stateless widget that contains
/// information about the weekly class schedule
class CalendarPage extends StatelessWidget {

  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Text("")
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
            )
          ],
        )
      ],
    );
  }

}