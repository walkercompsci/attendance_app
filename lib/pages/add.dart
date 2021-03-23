import 'package:attendance_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/services/addStudent';
import 'package:attendance_app/services/textGet.dart';
import 'package:attendance_app/services/getStudent.dart';
import 'package:attendance_app/services/student.dart';


class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();


}

class _AddState extends State<Add> {

  String name;
  String age;
  String year;

  GetStudent getStudent=GetStudent();

  final AddStudent _addStudent = AddStudent();
  TextGet nameGet=TextGet();
  TextGet ageGet=TextGet();
  TextGet yearGet=TextGet();

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
        child:Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width:250.0,
                  child:TextField(
                    controller:nameGet,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        gapPadding: 50.0,
                      ),
                      hintText: 'Enter Name'
                    ),
                  ),
                ),
                Container(
                  width:250.0,
                  child:TextField(
                    controller:ageGet,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent),
                          gapPadding: 50.0,
                        ),
                        hintText: 'Enter Age'
                    ),
                  ),
                ),
                Container(
                  width:250.0,
                  child:TextField(
                    controller:yearGet,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent),
                          gapPadding: 50.0,
                        ),
                        hintText: 'Enter Graduation Year'
                    ),
                  ),
                ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      onPressed:() async{
                        await getStudent.getStudent();
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
                        name=nameGet.text;
                        age= ageGet.text;
                        year= yearGet.text;
                        await _addStudent.addStudent(name,age,year);
                      },
                      label: Text('Add student'),
                      icon: Icon(Icons.add),
                    ),
                    FlatButton.icon(
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      onPressed:() async{
                        await getStudent.getStudent();
                      },
                      label: Text('Get student'),
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ]
            ),

          ],
        ),
      ),
    );
  }
}


