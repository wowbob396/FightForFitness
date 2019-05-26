import 'package:flutter/material.dart';

/// The CalendarPage class contains a stateless widget that contains
/// information about the weekly class schedule
class CalendarPage extends StatelessWidget {

  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: <Widget>[
          ListTile(
            title: Text("Monday"),
          ),
          ListTile(
            title: Text("Tuesday"),
          ),
          ListTile(
            title: Text("Wednesday"),
          ),
          ListTile(
            title: Text("Thursday"),
          ),
          ListTile(
            title: Text("Friday"),
          ),
          ListTile(
            title: Text("Saturday"),
          ),
        ],
      ).toList(),
    );
  }
}