import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Dashborad1(),
  ));
}

class Dashborad1 extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {
      'id': '123',
      'name': 'aman',
      'img': 'https://cdn-icons-png.flaticon.com/512/149/149071.png'
    },
    {
      'id': '134',
      'name': 'rahul',
      'img': 'https://cdn-icons-png.flaticon.com/512/149/149072.png'
    },
    {
      'id': '12323',
      'name': 'nitin',
      'img': 'https://cdn-icons-png.flaticon.com/512/149/149073.png'
    },
    {
      'id': '12344',
      'name': 'ashok',
      'img': 'https://cdn-icons-png.flaticon.com/512/149/149074.png'
    },
    {
      'id': '1243',
      'name': 'aman',
      'img': 'https://cdn-icons-png.flaticon.com/512/149/149075.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (_, index) {
        ListTile(
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          title: mData[index]['name'],
          subtitle: mData[index]['id'],
        );
      }),
    );
  }
}
