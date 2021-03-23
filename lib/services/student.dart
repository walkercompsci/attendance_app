class Student{
  Student(this.name,this.year,this.age);

  final String name;
  final String age;
  final String year;
  List<Student> students;

  void addStudent(name,age,year){
    students.add(Student(this.name,this.year,this.age));
  }

  Student returnAllStudents(){
    for(int i=0; i<students.length;i++){
      return students.elementAt(i);
    }
  }

  List returnStudents(){
      return students;
  }
}