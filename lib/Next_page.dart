import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_class/app_Contanst.dart';
import 'package:model_class/home_userModel.dart';

class NextNewPage extends StatelessWidget{
  int mindex;
  NextNewPage({required this.mindex});
  @override
  Widget build(BuildContext context) {
    var eachData = UserModel.fromMap(AppConstant.mData[mindex]);
    return Scaffold(
      appBar: AppBar(
        title: Text(eachData.name!),
      ),
    );
  }
}