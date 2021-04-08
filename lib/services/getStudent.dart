import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:attendance_app/services/student.dart';

class GetStudent{

  int iteration=0;
  Student student;
  List<Student> list;

  GetStudent();

  Future getStudent() async{
    FirebaseFirestore.instance
        .collection('clubs/robotics_club/students')
        .get()
        .then((QuerySnapshot querySnapshot)=>{
          querySnapshot.docs.forEach((doc){
            //student.addStudent(doc['full_name'],doc['age'],doc['year']);
            list.add(Student(doc['full_name'],doc['age'],doc['year']));
            student.addStudent(doc['full_name'],doc['age'],doc['year']);
            print(doc['full_name']+" "+doc['age']+" "+doc['year']);
            iteration++;
          })
    });
  }
}