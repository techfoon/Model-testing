import 'package:flutter/material.dart';
import 'package:usermodel_with_crud/modeluser.dart';
import 'package:usermodel_with_crud/addOprations.dart';
import 'package:usermodel_with_crud/updateOp.dart';
import 'myhttp.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard1(),
  ));
}

class Dashboard1 extends StatefulWidget {
  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  /* List<Map<String, dynamic>> mData = [
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
    {'id': '1243', 'name': 'aman', 'img': null},
  ];

  List<Modeluser> mData = [
    Modeluser(
        id: '123',
        name: 'aman',
        img: 'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
    Modeluser(
        id: '134',
        name: 'rahul',
        img: 'https://cdn-icons-png.flaticon.com/512/149/149072.png'),
    Modeluser(
        id: '12344',
        name: 'ashok',
        img: 'https://cdn-icons-png.flaticon.com/512/149/149074.png')
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hellow"),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          var mhttpData = Modeluser.fromMap(HttpMapclass.httpData[index]);
          return ListTile(
              leading: Container(
                  child: Image.network(mhttpData.img ??
                      "https://cdn-icons-png.flaticon.com/512/149/149077.png")),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (index) {
                          return UpdateOprations({});
                        }));
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        HttpMapclass.httpData.removeAt(index);

                        setState(() {});
                      },
                      icon: Icon(Icons.delete)),
                ],
              ),
              title: Text(mhttpData.name ?? "none"),
              subtitle: Text(
                mhttpData.id ?? " none",
              ));
        },
        itemCount: HttpMapclass.httpData.length,
      ),
      floatingActionButton: FloatingActionButton.small(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Oprations();
            }));
          }),
    );
  }
}
