import 'package:attendance_app/services/student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:attendance_app/services/getStudent.dart';
import 'package:flutter/material.dart';

class StudentDataSource extends DataGridSource{

  List<DataGridRow> dataGridRows=[];
  GetStudent getStudents=GetStudent();
  List<Student> students=GetStudent.list;
  ListEquality equal=ListEquality();

  StudentDataSource(){
    dataGridRows = students
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
          DataGridCell<String>(columnName: 'name', value: dataGridRow.name),
          DataGridCell<String>(columnName: 'age', value: dataGridRow.age),
          DataGridCell<String>(columnName: 'year', value: dataGridRow.year),
    ]))
        .toList();
  }


  @override
  List<DataGridRow> get rows=>dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row){
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
          return Container(
              alignment: (dataGridCell.columnName == 'name' ||
                  dataGridCell.columnName == 'age')
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                dataGridCell.value.toString(),
                overflow: TextOverflow.ellipsis,
              ));
        }).toList());
  }

  void compareList(){
    if(equal.equals(students, GetStudent.getList())!=true){
      setStudents(GetStudent.getList());
    }
  }

  void setStudents(List<Student> student){
    for(int i=0;i<student.length;i++){
      if(students.elementAt(i)!=student.elementAt(i)) {
        students.add(student.elementAt(i));
      }
    }
  }

}
