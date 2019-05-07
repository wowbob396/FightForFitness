import 'package:flutter/material.dart';

/// The CalendarPage class contains a stateless widget that contains
/// information about the weekly class schedule
class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0/11.0,
                  child: Image.asset("assets/mma.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("MMA Sparring"),
                      SizedBox(height: 8.0),
                      Text("7:15PM - 8:15PM"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0/11.0,
                  child: Image.asset("assets/grappling.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Grappling"),
                      SizedBox(height: 8.0),
                      Text("8:15AM - 9:15AM"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0/11.0,
                  child: Image.asset("assets/striking.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Striking"),
                      SizedBox(height: 8.0),
                      Text("6:10PM - 7:10PM"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}