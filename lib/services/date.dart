import 'package:flutter/material.dart';
import 'package:attendance_app/pages/add.dart';

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
          children: <Widget>[
            Row(
              children: <Widget>[

                SizedBox(
                  width: 50,
                  height: 100,
                ),
                Image.asset('WCC.png',
                  width:95,
                  height:95,
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
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context)=>
                        new Add())
                    );
                  },
                  label: Text('Add student',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  icon: Icon(Icons.add),
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
                  onPressed:getCurrentDate,
                  label: Text('Get date test',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  icon: Icon(Icons.add),
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

            Padding(
                padding: EdgeInsets.all(8.0),
                child :
                Text("Todays Date = $finalDate",

                  style: TextStyle(fontSize: 40),
                  textAlign: TextAlign.center,

                )
            ),


          ],
        ),
      ),
    );
  }
}