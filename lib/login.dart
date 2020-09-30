import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
              Navigator.pushNamed(context,'/login');
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
