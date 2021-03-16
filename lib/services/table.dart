import 'package:flutter/material.dart';
import 'package:attendance_app/services/getStudent.dart';

class Table extends DataRow {

  GetStudent getStudent =GetStudent();

  List<String> name=[];
  List<String> age=[];
  List<String> year=[];

  Table();

  Widget buildTable(){
      return DataTable(
        rows:[
          DataRow(
            cells:[
              DataCell(Text('E')),
            ]
          ),
        ]
      );
    }
  }

