import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: RichText(text: TextSpan(

                  ),

                ),
              ),
              Text("Column 2")
            ],
          )
        ],
      ),
    );
  }

}