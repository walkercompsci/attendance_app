import 'package:attendance_app/pages/teachersearch.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Club Attendance App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
      child: Column(
      children: <Widget>[
      FlatButton.icon(
      color: Colors.black,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
      onPressed:(){
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) =>
            new AddNewStudent()
        ));
      },
        icon: Icon(Icons.add),
        label: Text('login'),
    ),
      ],
    ),
    ),
    );
  }
}
