
import 'package:bmi/hooome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/controller.dart';
class Home extends StatelessWidget {
  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.find();

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<Controller>(init:Controller(), builder: (c){print("num1 ${c.num1}");return Text("${c.num1}");},),
              GetX<Controller>(builder: (c){print("num2 ${c.num2}");return Text("${c.num2}");} ,),
              GetX<Controller>(builder: (c){print("sum ${c.summ}");return Text("${c.summ}");},),
              MaterialButton(onPressed: (){ c.increment();c.summ;}, child: Text("+")),
              MaterialButton(onPressed: (){ c.dincrement();c.summ;}, child: Text("-")),
              //   Obx(()=>Center(child:MaterialButton.icon(onPressed: () { c.increment(); }, icon:Icon(Icons.add), label: Text("add"),))),
            ]
        ));
  }
}
