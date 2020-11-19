import 'package:attendance_app/pages/add.dart';
import 'package:attendance_app/pages/login.dart';
import 'package:flutter/material.dart';


class AddNewStudent extends StatefulWidget {
  @override
  _AddNewStudentState createState() => _AddNewStudentState();
}

class _AddNewStudentState extends State<AddNewStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Club Attendance App1'),
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
              onPressed:() {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                    new Add()
                ));
              },
              icon: Icon(Icons.add),
              label: Text('Add New Student'),
        ),


            FlatButton.icon(
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
              onPressed:() {
                Navigator.push(context, new MaterialPageRoute(
                builder: (context) =>
                  new Login()
                ));
              },
              icon: Icon(Icons.add),
              label: Text('Student Login'),
            ),
          ],
        ),
      ),
    );
    }
  }