import 'package:flutter/material.dart';
import 'package:attendance_app/services/date.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(

            
            body: Center(
                child: GetDate()
            )
        )
    );
  }
}