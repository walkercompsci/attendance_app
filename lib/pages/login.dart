import 'package:attendance_app/main.dart';
import 'package:attendance_app/pages/add.dart';
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color:Colors.black,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                onPressed:(){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context)=>
                      new MyApp())
                  );
                },
                icon: Icon(Icons.edit_location),
                label: Text('edit location'),
              ),

              RaisedButton(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: Colors.black,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context)=>
                      new Add())
                  );
                },
                child: Text("Add New Student",
                    style: TextStyle(fontSize:20 )
                ),
              ),
            ],
        ),
        ),
      );
    }
  }

