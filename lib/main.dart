import 'package:attendance_app/pages/add.dart';
import 'package:attendance_app/pages/teacherpage.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MaterialApp(
  home: LoginButton(),
  routes:{
'/login': (context) => Login(),
'/main': (context) => MyApp(),
'/add': (context) => Add(),

}
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(

            appBar: AppBar(

                title: const Text('Sign In To The CAA', style: TextStyle(
                  color: Colors.black,
                ),

                ),
                actions: [
                  Icon(Icons.search),
              ],
              backgroundColor:Color(0xFFcf7500),
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
        backgroundColor: Colors.black45,
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
                  style: TextStyle(fontSize:30 )
              ),
              ),
          ],
          ),
          ),
        );
  }
}

/*class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyAwesomeApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Loading();
      },
    );
  }
}*/

