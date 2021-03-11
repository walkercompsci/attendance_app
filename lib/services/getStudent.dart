import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetStudent{

  String name;
  String age;
  String year;

  GetStudent();

  Future getStudent() async{
    FirebaseFirestore.instance
        .collection('clubs/robotics_club/students')
        .get()
        .then((QuerySnapshot querySnapshot)=>{
          querySnapshot.docs.forEach((doc){
            print(doc['full_name']);
          })
    });
  }

}