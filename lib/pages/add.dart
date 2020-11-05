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


