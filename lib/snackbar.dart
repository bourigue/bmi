import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

void main(){
 runApp(GetMaterialApp(home: home()));
}

class Home extends StatelessWidget {
 final Controller c=Get.put(Controller(),permanent: false);
  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.


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
            MaterialButton(onPressed: (){ Get.to(page2());}, child: Text("GO")),
            //   Obx(()=>Center(child:MaterialButton.icon(onPressed: () { c.increment(); }, icon:Icon(Icons.add), label: Text("add"),))),
          ]
        ));
  }
}
class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GetX<Controller>(builder: (c)=>Center(child: Text("${c.summ}"),),),
    
     
   );
  }
  
}

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(children: [
          MaterialButton(onPressed: (){ Get.to(page2());}, child: Text("page 2")),
          MaterialButton(onPressed: (){ Get.to(Home());}, child: Text("page 1")),



        ],),
      ),


    );
  }

}