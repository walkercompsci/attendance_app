import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:attendance_app/services/student.dart';

class GetStudent{

  List<String> name=[];
  List<String> age=[];
  List<String> year=[];
  Student student;

  GetStudent();

  Future getStudent() async{
    FirebaseFirestore.instance
        .collection('clubs/robotics_club/students')
        .get()
        .then((QuerySnapshot querySnapshot)=>{
          querySnapshot.docs.forEach((doc){
            student.addStudent(doc['full_name'],doc['age'],doc['year']);
          })
    });
  }

  List getNames(){
    return name;
  }

  List getAges(){
    return age;
  }

  List getYears(){
    return year;
  }

}