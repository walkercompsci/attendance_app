class Student{
  Student(this.name,this.year,this.age);

  final String name;
  final String age;
  final String year;
  List<Student> students=[];


  addStudent(name,age,year){
    students.add(Student(this.name,this.year,this.age));
  }

  void getAllStudents(List<Student> list){
    for(int i=0; i<students.length;i++){
      print(name);
      print(year);
      print(age);
      if(list.elementAt(i)!=students.elementAt(i)) {
        list.add(students.elementAt(i));
      }
    }
  }

  List getStudents(){
      return students;
  }

  void setStudents(List list){
    students=list;
  }



}