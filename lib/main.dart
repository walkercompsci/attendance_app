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

              FlatButton.icon(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed:(){
                  Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new Login())
                  );
                },
                color: Colors.black,
                icon: Icon(Icons.edit_location),
                textColor: Colors.white,
                label: Text('edit location'),
              ),
            ],
          ),
        ));
  }
}
