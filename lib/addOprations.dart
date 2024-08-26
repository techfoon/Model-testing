import 'package:flutter/material.dart';
import 'package:usermodel_with_crud/myhttp.dart';

class Oprations extends StatefulWidget {
  @override
  State<Oprations> createState() => _OprationsState();
}

class _OprationsState extends State<Oprations> {
  TextEditingController idController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController imgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD YOUR RCORD"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: idController,
              decoration: InputDecoration(
                label: Text("Please Enter ID:"),
                hintText: "ID:",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text("Please Enter Name:"),
                hintText: "Name:",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: imgController,
              decoration: InputDecoration(
                label: Text("Please Enter IMG URL:"),
                hintText: "IMG URL:",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> addData = {
                    'id': idController.text.toString(),
                    'name': nameController.text.toString(),
                    'img': imgController.text.toString()
                  };

                  HttpMapclass.httpData.add(addData);

                  // print(HttpMapclass.httpData);

                  Navigator.pop(context);
                  setState(() {});
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
