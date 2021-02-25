
import 'package:attendance_app/pages/add.dart';
import 'package:attendance_app/pages/teachersearch.dart';
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
        backgroundColor: Colors.orangeAccent,

        body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,



            children: <Widget>[


              FlatButton.icon(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color:Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                onPressed:(){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context)=>
                      new AddNewStudent())
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
                  DataColumn(label:Text('Club Hours')),
                ],
                rows: [
                  DataRow(
                      color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white30;
                          }),
                      cells: [
                    DataCell(Text('Poggers')),
                    DataCell(Text('2021')),
                    DataCell(Text('69')),

                ]),
                DataRow(
                    color: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.white30;
                        }),
                    cells: [
                  DataCell(Text('yehaw')),
                  DataCell(Text('2025')),
                  DataCell(Text('69')),

                ]),
                  DataRow(
                      color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white30;
                          }),
                      cells: [
                    DataCell(Text('painbot')),
                    DataCell(Text('2054')),
                    DataCell(Text('69')),

                  ]),
                ],
              )


            ],



        ),

        ),
      ));
    }
  }

