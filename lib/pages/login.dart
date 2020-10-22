import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Attendance Club App'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed:(){
                  Navigator.pushNamed(context,'/main');
                },
                icon: Icon(Icons.edit_location),
                label: Text('edit location'),
              ),
            ],
        ),
        ),
      );
    }
  }

