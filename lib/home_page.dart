import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_class/app_Contanst.dart';
import 'package:model_class/home_userModel.dart';

import 'Next_page.dart';

class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount:AppConstant.mData.length ,
          itemBuilder: (_,index){
          var eachDataModel = UserModel.fromMap(AppConstant.mData[index]);
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NextNewPage(mindex: index,)));
            },
              leading: CircleAvatar(
                child: Text(index.toString()),
              ),
            title: Text(eachDataModel.name!),
            subtitle: Text(eachDataModel.Gender!),
            trailing: Text("Age: ${eachDataModel.age}"),
          );
          }),
    );
  }
}