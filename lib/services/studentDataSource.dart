import 'package:attendance_app/services/student.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class StudentDataSource extends DataGridSource<Student>{

  final List<Student> _students = <Student>[];

  List<Student> get dataSource => _students;



}
