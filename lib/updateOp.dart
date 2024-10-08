import 'package:flutter/material.dart';
import 'package:usermodel_with_crud/myhttp.dart';

class UpdateOprations extends StatelessWidget {
  final int opIndex;
  TextEditingController? idController;
  TextEditingController? nameController;
  TextEditingController? imgController;
  UpdateOprations({super.key, required this.opIndex,}) {
    idController = TextEditingController(
        text: HttpMapclass.httpData[opIndex]['id'].toString());
    nameController = TextEditingController( text: HttpMapclass.httpData[opIndex]['name'].toString());
      imgController = TextEditingController( text: HttpMapclass.httpData[opIndex]['img'].toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UPDATE YOUR RCORD"),
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
                label: Text("Please Update ID:"),
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
                label: Text("Please Update Name:"),
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
                label: Text("Please Update IMG URL:"),
                hintText: "IMG URL:",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  HttpMapclass.httpData[opIndex] = {
                    'id': idController!.text.toString(),
                    'name': nameController!.text.toString(),
                    'img': imgController!.text.toString()
                  };

                  // print(HttpMapclass.httpData);

                  Navigator.pop(context);
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
