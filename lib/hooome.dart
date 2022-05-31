import 'package:bmi/view/page1.dart';

import 'package:bmi/view/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

void main(){
 runApp(GetMaterialApp(home: home()));
}

class home extends StatelessWidget{
 final  c=Get.lazyPut(()=>Controller(),fenix: true);
 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(),
   body:Center(
    child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
      MaterialButton(onPressed: (){ Get.to(page2());}, child: Text("page 2")),
      MaterialButton(onPressed: (){ Get.to(Home());}, child: Text("page 1")),
     ],),
   ),
  );
 }

}



