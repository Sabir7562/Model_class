import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NoteHomeState();
}
class NoteHomeState extends State<NoteHome>{
   @override
  Widget build(BuildContext context) {
     List<Map<String,dynamic>> nData = [];
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes App"),
      ),
      body: ListView.builder(
          itemBuilder: (_,index){
        return ListTile();
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        SD();
        print("Clicked");
      },child: Icon(Icons.add),),
    );
  }
  void SD(){
     showDialog(context: context, builder: (BuildContext context){
       return AlertDialog(
         title: Text("Add Note"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
       }, child: Text("ok"))
       ],
       );
     });

  }
}