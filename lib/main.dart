import 'package:attendance_app/pages/add.dart';
import 'package:attendance_app/pages/location.dart';
import 'package:attendance_app/pages/teacherpage.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp(


'/login': (context) => Login(),
'/main': (context) => MyApp(),
'/add': (context) => Add(),

}
));



class App extends StatelessWidget {
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
}

