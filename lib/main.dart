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
        alignment:Alignment.center ,
        child: Text("RB",style: TextStyle(fontWeight:FontWeight.w900),),),

      ),

    );
    throw UnimplementedError();
  }

}



