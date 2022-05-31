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
                builder:(c)=>Center(child: ElevatedButton(child: Text("add"),onPressed:(){c.increment();},))),

            GetBuilder<Controller>(

                builder:(c)=>Center(child: Text("${c.count}"+"  MMM")))
          ],
        ),

  );
  }
}

