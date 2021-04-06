import 'package:attendance_app/services/student.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:attendance_app/services/getStudent.dart';

class StudentDataSource extends DataGridSource<Student>{

  Student student;

  List<Student> list;


  @override
  List<Student> get dataSource => student.getStudents();

  @override
  Object getValue(Student data, String columnName) {
    // TODO: implement getValue
    switch (columnName) {
      case 'name':
        return student.name;
        break;
      case 'age':
        return student.age;
        break;
      case 'year':
        return student.year;
        break;
      default:
        return '';
        break;
    }
  }

  /*void setVar(){
    for(int i=0;i<student.getStudents().length;i++){
      if(_student.elementAt(i)!=student.getStudents().elementAt(i)){
        _student.add(student.getStudents().elementAt(i));
      }
    }
  }*/
}
