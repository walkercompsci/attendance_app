
import 'dart:ui';

import 'package:attendance_app/pages/add.dart';
import 'package:attendance_app/pages/teachersearch.dart';
import 'package:attendance_app/services/studentDataSource.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  StudentDataSource studentDataSource=StudentDataSource();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.grey,

        body: SafeArea(


         child:Column(
            children: <Widget>[
            Row(
                children: <Widget>[

                  SizedBox(
                    width: 50,
                    height: 100,
                  ),
                    Image.network('https://adulteducation.warren.k12.in.us/assets/apptegy_cms/themes/msdwarrenin/logo2_walker-career-center-474c503d28817c64d51e08d37b1a75aa.png',
                      width:75,
                      height:75,
                    ),

                SizedBox(
                  width: 10,
                  height: 100,
                ),

                  Text("Club Attendance App",

                    style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.underline,

                    ),
                  ),
                  SizedBox(
                    width: 640,
                    height: 100,
                  ),
                  RaisedButton.icon(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

                    color:Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                    onPressed:(){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context)=>
                          new AddNewStudent())
                      );
                    },

                    label: Text('Find a Student',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(Icons.account_circle_outlined),
                  ),
                  SizedBox(
                    width: 10,
                    height: 100,
                  ),

                  RaisedButton.icon(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    color: Colors.black,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context)=>
                          new Add())
                      );

                    },


                    label: Text('Find a Student',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(Icons.search),
                  ),



                ],
            ),
              Row(
                children: <Widget>[
              Expanded(
                child: Divider(

                  thickness: 10,
                  height: 1,
                  indent: 30,
                  endIndent: 30,
                  color: Colors.black45,
                ),
              ) ,

            ],
        ),
              Column(

                children: <Widget>[













                ],



              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,


                children: <Widget>[



                           Text("Student's Enrolled",

                      style: TextStyle(
                          fontSize: 50,

                      ),


                  ),

                  SfDataGrid(
                      source: studentDataSource,
                      columns: [
                        GridTextColumn(
                            columnName: 'name',
                            label:Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              alignment: Alignment.centerRight,
                              child: Text('Name'),
                            ),
                        ),
                        GridTextColumn(
                          columnName: 'age',
                          label:Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerRight,
                            child: Text('Age'),
                          ),
                        ),
                        GridTextColumn(
                          columnName: 'year',
                          label:Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerRight,
                            child: Text('Gradution Year'),
                          ),
                        ),
                      ],
                  ),







                  /*DataTable(

                    columns: [

                      DataColumn(
                          label:Text('Name',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                        ),
                      ) ),
                      DataColumn(label:Text('Graduation Year',
                        style: TextStyle(
                            fontSize: 25,
                          decoration: TextDecoration.underline,
                      ),
                      ) ),
                      DataColumn(label:Text('Club Hours',
                        style: TextStyle(
                          fontSize: 25,
                          decoration: TextDecoration.underline,
                        ),
                      ) ),
                    ],
                    rows: [
                      DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                return Colors.white30;
                              }),
                          cells: [
                            DataCell(Text('Poggers',

                              style: TextStyle(
                                fontSize: 25,

                              ),
                            ) ),
                            DataCell(Text('2021',
                              style: TextStyle(
                                fontSize: 25,

                              ),
                            ) ),
                            DataCell(Text('69',
                              style: TextStyle(
                                fontSize: 25,

                              ),
                            ) ),

                          ]),
                      DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                return Colors.white30;
                              }),
                          cells: [
                            DataCell(Text('yehaw',
                              style: TextStyle(
                              fontSize: 25,
                                color:Colors.red,
                              ),
                              ) ),

                            DataCell(Text('2025',
                              style: TextStyle(
                                fontSize: 25,
                                color:Colors.red,
                              ),
                            ) ),

                            DataCell(Text('69',
                              style: TextStyle(
                                fontSize: 25,
                                color:Colors.red,
                              ),
                            ) ),

                          ]),
                      DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                return Colors.white30;
                              }),
                          cells: [
                            DataCell(Text('painbot',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ) ),
                            DataCell(Text('2054',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ) ),
                            DataCell(Text('69',style: TextStyle(
                              fontSize: 25,
                            ),
                            ) ),

                          ]),
                      DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                return Colors.white30;
                              }),
                          cells: [
                            DataCell(Text('painbot',
                              style: TextStyle(
                                fontSize: 25,
                                color:Colors.red,
                              ),
                            ) ),
                            DataCell(Text('2054',
                              style: TextStyle(
                                fontSize: 25,
                                color:Colors.red,
                              ),
                            ) ),
                            DataCell(Text('69',style: TextStyle(
                              fontSize: 25,
                              color:Colors.red,
                            ),
                            ) ),

                          ]),
                      DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                return Colors.white30;
                              }),
                          cells: [
                            DataCell(Text('painbot',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ) ),
                            DataCell(Text('2054',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ) ),
                            DataCell(Text('69',style: TextStyle(
                              fontSize: 25,
                            ),
                            ) ),

                          ]),
                    ],
                  )*/


                ],



              ),
            ]
          )



        ),

      ));
    }
  }

