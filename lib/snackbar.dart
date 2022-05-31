import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

void main(){
 runApp(GetMaterialApp(home: Home()));
}

class Home extends StatelessWidget {

  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
  //  final Controller c = Get.put(Controller());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.


        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(

            init:Controller(),
            builder: (c){
              print("num1 ${c.num1}");
              return Text("${c.num1}");},),
            GetBuilder<Controller>(

              builder: (c){
                print("num2 ${c.num2}");
                return Text("${c.num2}");
              } ,),
            GetBuilder<Controller>(

              builder: (c){
                print("sum ${c.sum}");
               return Text("${c.sum}");

              },),
            GetBuilder<Controller>(builder: (c) =>ElevatedButton(onPressed: (){ c.increment();c.summe();}, child: Text("+")),),
            GetBuilder<Controller>(builder: (c) =>ElevatedButton(onPressed: (){ c.dincrement();c.summe();}, child: Text("-")),)




            //   Obx(()=>Center(child:ElevatedButton.icon(onPressed: () { c.increment(); }, icon:Icon(Icons.add), label: Text("add"),))),
            
        ]


           

  ));
  }
}

