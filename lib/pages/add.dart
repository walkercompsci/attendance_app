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
  Student student;

  final AddStudent _addStudent = AddStudent();
  TextGet nameGet=TextGet();
  TextGet ageGet=TextGet();
  TextGet yearGet=TextGet();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Add Student '),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
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
                  onPressed: () => {},
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
                  onPressed: () => {},
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("New Students Information",

                  style: TextStyle(
                    fontSize: 50,
                    decoration: TextDecoration.underline,

                  ),


                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
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
                SizedBox(
                  width: 10,
                  height: 10,
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
                SizedBox(
                  width: 10,
                  height: 10,
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
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                      onPressed:() async{
                        await getStudent.getStudent();
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context) =>
                            new Login()
                        ));
                      },
                      label: Text('Student Table'),
                      icon: Icon(Icons.add),
                    ),


                    FlatButton.icon(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
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
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                      onPressed:() async{
                        await getStudent.getStudent();
                        print(student.getAllStudents());
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


