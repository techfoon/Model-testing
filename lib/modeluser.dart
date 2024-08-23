//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:usermodel_with_crud/myhttp.dart';

class UserModel {
  String? id;
  String? name;
  String? img;

  UserModel({required this.id, required this.name, required this.img});

//From map to model

  factory UserModel.fromMap(Map<String, dynamic> map1) {
    return UserModel(id: map1['id'], name: map1['name'], img: map1['img']);
  }

// From model to map
/*
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'img': img,
    };
  }*/
}
