import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:MediChat/model/MedData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //Future <Diseases> data;
  var firebaseDB=Firestore.instance.collection('Medico').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: firebaseDB,
        builder: (context,snapshot){
          return ListView.builder(
            itemCount: 5,
              itemBuilder:(context,int index){
                return Text(snapshot.data.documents[index]['name']);
              }
          );
        },

      )
    );
  }
}

Future <Diseases> FetchDiseaseList() async{
  print('###################################');
  String response= await rootBundle.loadString('assets/data/MedData.json');
  print(response);
  return Diseases.fromJson(json.decode(response));
}

