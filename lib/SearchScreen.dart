import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:MediChat/model/MedData.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Future <Diseases> data;
  @override
  void initState() {
    super.initState();
    data= FetchDiseaseList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: data,
        builder:(context,AsyncSnapshot <Diseases> snapshot){
          if(snapshot.hasData){
            return Center(
              child: Text(snapshot.data.diseases[0].name),
            );

          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Future <Diseases> FetchDiseaseList() async{
  print('###################################');
  String response= await rootBundle.loadString('assets/data/MedData.json');
  print(response);
  return Diseases.fromJson(json.decode(response));
}

