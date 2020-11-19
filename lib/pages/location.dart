import 'package:flutter/material.dart';
import 'package:attendance_app/services/date.dart';

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