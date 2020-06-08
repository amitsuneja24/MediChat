import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:MediChat/model/MedData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //Future <Diseases> data;
  var firebaseDB=Firestore.instance.collection('Medico').snapshots();
  @override
  Widget build(BuildContext context) {
    SearchBarController _controller;
    return Scaffold(
      body: StreamBuilder(
        stream: firebaseDB,
        builder: (context,snapshot){
          return Container(
            child: SearchBar(
              hintText: "Enter Disease",
              onSearch: ,

            ),
          );
        },

      )
    );
  }
}

