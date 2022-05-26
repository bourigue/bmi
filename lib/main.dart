import 'package:flutter/material.dart';

void main() {
  runApp( myapp() );
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(

      ),
      body:Container(


        decoration:BoxDecoration(

            gradient:LinearGradient(begin:Alignment.topCenter,
                                    end:Alignment.bottomCenter,
                                    colors: [
                                      Colors.red.shade300,
                                      Colors.red.shade400,
                                      Colors.red.shade500,
                                      Colors.red.shade600,
                                      Colors.red.shade700,
                                      Colors.red.shade800,
                                    ],
            ) ,
            borderRadius:BorderRadius.vertical(bottom:Radius.circular(30),


            ), boxShadow: const [BoxShadow(color : Color(0xFF000000),   offset:Offset.zero,    blurRadius : 12.0,    spreadRadius : 0.0,  blurStyle :BlurStyle.normal)]
        ) ,

        child:Center(
          child: SingleChildScrollView(

              scrollDirection:Axis.horizontal,
              child:Row(children: [
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),
            Text("GGGkmkmkrfvG"),


          ],)),
        ),

      ),

    ));

  }

}



