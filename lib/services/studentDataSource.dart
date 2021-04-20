import 'package:attendance_app/services/student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:attendance_app/services/getStudent.dart';
import 'package:flutter/material.dart';

class StudentDataSource extends DataGridSource{

  List<DataGridRow> dataGridRows=[];
  GetStudent getStudents=GetStudent();
  List<Student> students=[];
  ListEquality equal=ListEquality();

  StudentDataSource(){
    compareList();
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
              alignment: (dataGridCell.columnName == 'id' ||
                  dataGridCell.columnName == 'salary')
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
    if(equal.equals(students,getStudents.getList())!=true){
      setStudents();
    }
  }

  void setStudents(){
    for(int i=0;i<getStudents.getList().length;i++){
      if(students.elementAt(i)!=getStudents.getList().elementAt(i)) {
        students.add(getStudents.getList().elementAt(i));
      }
    }
  }

}
