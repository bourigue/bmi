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


            ),boxShadow: const [BoxShadow(color : Color(0xFF000000),   offset:Offset.zero,    blurRadius : 12.0,    spreadRadius : 0.0,  blurStyle :BlurStyle.normal)]
        ) ,

        child:Row(
          mainAxisAlignment:MainAxisAlignment.start ,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,


          children: [Container( color:Colors.red,child: Text("1" )),Text("2"),Text("3"),Text("4"),Text("5"),Text("6")],),
      ),

      ),

    );
    throw UnimplementedError();
  }

}



