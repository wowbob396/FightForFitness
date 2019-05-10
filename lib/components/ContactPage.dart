import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              Text("Hello"),
              SizedBox(height: 120),
              Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Full Name',
                    ),
                  ),
// spacer
                  SizedBox(height: 12.0),
// [Password]
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Email',
                    ),
                  ),

                  SizedBox(height: 12.0),
// [Password]
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Phone Number',
                    ),
                  ),
// [Password]

                  Column(
                    children: <Widget>[
                      TextFormField(

                        decoration: InputDecoration(

                          filled: false,
                          labelText: 'Message',
                        ),

                      ),
                    ],
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}