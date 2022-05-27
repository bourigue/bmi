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
       child:Column(children: [InkWell(
           onTap:(){


           },
           child: Row(children: [CircleAvatar(child: Icon(Icons.library_books),),Expanded(child: Text("Rachid bourigue")),CircleAvatar(child: Icon(Icons.library_books),)],)),],)

      ),

    ));

  }

}



