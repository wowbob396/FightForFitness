import 'package:flutter/material.dart';

void main() => runApp(FightApp());

class FightApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fight For Fitness",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fight For Fitness"),

        ),
        body: Center(
          child: Text("Test"),
        ),
      ),
    );
  }
}

Widget buttonSection() {
  Color color = Colors.blue;
  print("Hello, World");
  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

      ],
    ),
  );

  return buttonSection;
}

Widget buildButtonColumn(Color color, IconData icon, String label) {
  return Column (

  );
}