import 'package:flutter/material.dart';
import 'package:attendance_app/pages/login.dart';

void main() => runApp(MaterialApp(
  home: Login(),
  routes:{
   '/login': (context) => Login(),
    '/main': (context) => MyApp(),
  },

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor:Colors.black,
                title: Text('Sign In To The CAA')
            ),
            body: Center(
                child: GetDate()
            )
        )
    );
  }
}
class Back extends StatefulWidget {
  @override
  _BackState createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[
          Padding(
      padding: EdgeInsets.all(8.0),
          ),
          FlatButton.icon(

            onPressed:(){
              Navigator.pushNamed(context,'/login');
            },
            color: Colors.red,
            icon: Icon(Icons.edit_location),
            label: Text('edit location'),
          ),

        ],
      ),
    ),);
  }
}

class GetDate extends StatefulWidget {

  _GetDateState createState() => _GetDateState();

}

class _GetDateState extends State<GetDate> {

  String finalDate = '';

  getCurrentDate(){

    var date = new DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

    setState(() {

      finalDate = formattedDate.toString() ;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                  padding: EdgeInsets.all(8.0),
                  child :
                  Text("Date Of Sign In = $finalDate",

                    style: TextStyle(fontSize: 50),
                    textAlign: TextAlign.center,

                  )
              ),

              RaisedButton(
                onPressed:getCurrentDate,
                color: Colors.black,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Sign In',
                    style: TextStyle(fontSize: 50)
                ),
              ),

            ],
          ),
        ));
  }
}
