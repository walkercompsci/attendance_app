import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetStudent{

  List<String> name=[];
  List<String> age=[];
  List<String> year=[];

  GetStudent();

  Future getStudent() async{
    FirebaseFirestore.instance
        .collection('clubs/robotics_club/students')
        .get()
        .then((QuerySnapshot querySnapshot)=>{
          querySnapshot.docs.forEach((doc){
            name.add(doc['full_name']);
            age.add(doc['age']);
            year.add(doc['year']);
            print(name);
            print(age);
            print(year);
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