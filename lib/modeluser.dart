import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//map to model
class Modeluser {
  String? id, name, img;

  Modeluser({required this.id, required this.name, required this.img});

  factory Modeluser.fromMap(Map<String, dynamic> map1) {
    return Modeluser(id: map1['id'], name: map1['name'],img: map1['img']);
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





