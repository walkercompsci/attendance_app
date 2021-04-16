import 'package:attendance_app/services/student.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:attendance_app/services/getStudent.dart';
import 'package:flutter/material.dart';

/*class StudentDataSource extends DataGridSource{

  List<DataGridRow> dataGridRows=[];

  StudentDataSource(List<Student> students){
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

  void setVar(){
    for(int i=0;i<student.getStudents().length;i++){
      if(_student.elementAt(i)!=student.getStudents().elementAt(i)){
        _student.add(student.getStudents().elementAt(i));
      }
    }
  }
}*/
