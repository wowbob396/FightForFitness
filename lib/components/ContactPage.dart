import 'package:flutter/material.dart';

/// class for the contact page which handles users sending queries about gym membership
class ContactPage extends StatelessWidget {

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              Text("Please feel free to send a message relating to membership information, or general gym information."),
              SizedBox(height: 120),
              Column(
                children: <Widget>[
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Full Name',
                    ),
                  ),
// spacer
                  SizedBox(height: 12.0),
// [Password]
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Email',
                    ),
                  ),

                  SizedBox(height: 12.0),
// [Password]
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Phone Number',
                    ),
                  ),
// [Password]
                  TextFormField(
                    controller: _messageController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      filled: false,
                      labelText: 'Leave a Message!',
                    ),

                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text('Clear Form'),
                        onPressed: () {
                          _usernameController.clear();
                          _emailController.clear();
                          _phoneController.clear();
                          _messageController.clear();
                        },
                      ),
                      RaisedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          // TODO: Submit the information to firebase
                        },
                      )
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