import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Image.network('https://res.cloudinary.com/dziablq1m/image/upload/v1534214969/Beemon/Background/wallpaper-07.jpg').image,
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        color: Colors.black38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        )
      ),
    );
  }
}