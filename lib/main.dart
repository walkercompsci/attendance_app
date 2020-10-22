import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
    return Container();
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
                  Text("Date Of Sign In = $finalDate,Welcome to the CCA",

                    style: TextStyle(fontSize: 50),
                    textAlign: TextAlign.center,

                  )
              ),

              RaisedButton(
                onpressed:getCurrentDate,
                color: Colors.black,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Sign In',
                    style: TextStyle(fontSize: 30)
                ),
              ),

            ],
          ),
        ));
  }
}
