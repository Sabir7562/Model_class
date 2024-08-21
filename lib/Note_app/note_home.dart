import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Note_Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Note_HomeState();
}

class Note_HomeState extends State<Note_Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes app"),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: ,
          itemBuilder:(_,index){
          return ListTile(
            leading: Text(index.toString()),

          );


          }),
    );
  }
}
