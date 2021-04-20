import 'package:attendance_app/pages/add.dart';
import 'package:attendance_app/pages/login.dart';
import 'package:flutter/material.dart';


class AddNewStudent extends StatefulWidget {
  @override
  _AddNewStudentState createState() => _AddNewStudentState();
}

class _AddNewStudentState extends State<AddNewStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
           children: <Widget>[
             Row(
               children: <Widget>[

                 SizedBox(
                   width: 50,
                   height: 100,
                 ),
                 Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_fHm5WbDTFvrKoJG4eeY8BtC9WjWfl6eentQ45834EE6x40pc-OF7DzWwzD0DJOu-aNQ9IKnNVZy3ZW4HQ:https://d.newsweek.com/en/full/1191074/pain-headache.jpg&usqp=CAU',
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
                   color: Colors.green,
                   textColor: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                   onPressed:() async{
                     //await getStudent.getStudent();
                     Navigator.push(context, new MaterialPageRoute(
                         builder: (context) =>
                         new Login()
                     ));
                   },
                   label: Text('Table of Students',
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
                   onPressed:() {
                     Navigator.push(context, new MaterialPageRoute(
                         builder: (context) =>
                         new Login()
                     ));
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

            FlatButton.icon(
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
              onPressed:() {
                Navigator.push(context, new MaterialPageRoute(
                builder: (context) =>
                  new Login()
                ));
              },
              icon: Icon(Icons.add),
              label: Text('Student Login'),
            ),

             TextField(
               obscureText: true,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Password',
               ),
             )

          ],
        ),
      ),
    );
    }
  }
class TextFunction extends StatefulWidget {
  TextFunction({required Key key}) : super(key : key);
  @override
  _TextFunctionState createState() => _TextFunctionState();
}

class _TextFunctionState extends State<TextFunction> {
  TextEditingController _controller=TextEditingController();

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: _controller,
          onSubmitted: (String value) async{
            await showDialog<void>(
              context: context,
              builder: (BuildContext context){
              return AlertDialog(
                title: const Text("yee"),
                content: Text("you typed"),
                actions:<Widget> [
                  FlatButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('YEEEEEEEEEEE'),
                  )
                ],
              );
              }
              );
          },
        ),
      ),
    );
  }
}

