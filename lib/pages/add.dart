import 'package:attendance_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/services/addStudent';


class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();

}

class _AddState extends State<Add> {
  final AddStudent _addStudent = AddStudent('John',32,12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Add Student '),
        centerTitle: true,
        backgroundColor: Colors.green,
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
                      new Login()
                ));
              },
              label: Text('This button leads somewhere else'),
              icon: Icon(Icons.add),
            ),
            FlatButton.icon(
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
              onPressed:() async{
                await _addStudent.addStudent();
              },
              label: Text('Add student'),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}


