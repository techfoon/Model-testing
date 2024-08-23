import 'package:flutter/material.dart';
import 'package:usermodel_with_crud/myhttp.dart';
import 'package:usermodel_with_crud/modeluser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserDash(),
    );
  }
}

class UserDash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CRUD"),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            var eachUserModel = UserModel.fromMap(AppContants.mData[index]);
            return ListTile(
              leading: Image.network(eachUserModel.img ?? "https://cdn-icons-png.flaticon.com/512/149/149077.png"),
              trailing: IconButton(
                iconSize: 23,
                icon: Icon(Icons.edit),
                onPressed: () {
                  print("button is taped");
                },
              ),
              title: Text(eachUserModel.name ?? "name issues"),
              subtitle: Text(eachUserModel.id.toString()),
            );
          },
          itemCount: AppContants.mData.length,
        ));
  }
}
