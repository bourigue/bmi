import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Test() );
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
//snackbar
class Test extends StatefulWidget{
  Test({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }



}

class TestState extends State<Test>{

  GlobalKey<ScaffoldState> keysnk=new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('SnackBar Playground'),
       ),
       body: Builder(
         builder: (context) =>
             Center(
               child: RaisedButton(
                 color: Colors.pink,
                 textColor: Colors.white,
                 onPressed: (){

                   final snackBar = SnackBar(
                     elevation: 0,
                     behavior: SnackBarBehavior.floating,
                     backgroundColor: Colors.transparent,
                     content: AwesomeSnackbarContent(
                       title: 'On Snap!',
                       message:
                       'This is an example error message that will be shown in the body of snackbar!',
                       contentType: ContentType.failure,
                     ),
                   );
                   Scaffold.of(context).showSnackBar(snackBar);
                 },
                 child: Text('Display SnackBar'),
               ),
             ),
       ),
     ),
   );
  }

}
_displaySnackBar(BuildContext context) {

}




