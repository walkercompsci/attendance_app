import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:attendance_app/services/student.dart';
import 'package:attendance_app/services/studentDataSource.dart';

class GetStudent{

  int iteration=0;
  List<Student> list=[];
  List<Student> testList=[];
  Student student=Student('a','a','a');
  //StudentDataSource student=StudentDataSource();

  GetStudent();

  Future getStudent() async{
    FirebaseFirestore.instance
        .collection('clubs/robotics_club/students')
        .get()
        .then((QuerySnapshot querySnapshot)=>{
          querySnapshot.docs.forEach((doc){
            list.add(Student(doc['full_name'],doc['age'],doc['year']));
            iteration++;
          })
    });
    //print(list.elementAt(0).returnName());
    //student.setStudents(list);
  }

  List<Student> getList(){
    return list;
  }

  List<Student> getTestList(){
    print(student.returnName());
    return testList;
  }
}