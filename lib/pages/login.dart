
import 'package:attendance_app/pages/add.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color:Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                onPressed:(){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context)=>
                      new Column())
                  );
                },
                icon: Icon(Icons.edit_location),
                label: Text('edit location'),
              ),
              //THIS IS WHEREE THE TABLE THINGY TYPED WILL GO hhhhhhhh
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
              DataTable(
                columns: [
                  DataColumn(label:Text('Name')),
                  DataColumn(label:Text('Graduation Year')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Poggers')),
                    DataCell(Text('2021')),

                ]),
                DataRow(cells: [
                  DataCell(Text('yehaw')),
                  DataCell(Text('2025')),

                ]),
                  DataRow(cells: [
                    DataCell(Text('painbot')),
                    DataCell(Text('2054')),

                  ]),
                ],
              )
            ],


        ),

        ),
      ));
    }
  }

