import 'package:attendance_app/pages/login.dart';
import 'package:flutter/material.dart';


class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Add Student '),
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
                      new Login()
                ));
              },
              icon: Icon(Icons.add),
              label: Text('edit location'),
            ),
          ],
        ),
      ),
    );
  }
}


