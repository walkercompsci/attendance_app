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
      appBar: AppBar(
        title: Text('Student Search'),
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
              onPressed:() {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                    new Add()
                ));
              },
              icon: Icon(Icons.add),
              label: Text('Add New Student'),
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
  TextFunction({Key key}) : super(key : key);
  @override
  _TextFunctionState createState() => _TextFunctionState();
}

class _TextFunctionState extends State<TextFunction> {
  TextEditingController _controller;

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

