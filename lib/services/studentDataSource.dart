import 'package:attendance_app/services/student.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class StudentDataSource extends DataGridSource<Student>{

  Student student;

  final List<Student> _student = <Student>[];

  @override
  List<Student> get dataSource => student.returnStudents();

  @override
  Object getValue(Student data, String columnName) {
    // TODO: implement getValue
    switch (columnName){
      case 'name':
        return student.name;
        break;
      case 'age':
        return student.age;
        break;
      case 'year':
        return student.year;
        break;
    }
  }

  void setVar(){
    for(int i=0;i<student.returnStudents().length;i++){
      if(_student.elementAt(i)!=student.returnStudents().elementAt(i)){
        _student.add(student.returnStudents().elementAt(i));
      }
    }
  }
}
