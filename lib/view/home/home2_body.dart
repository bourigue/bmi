import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class homecoloco2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:Column(


          children: [
        Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*  Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff00A3FF),
                              backgroundImage: AssetImage("media/images/img.png"),
                              radius: 25.0,
                            ),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                    padding: EdgeInsets.all(7.5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.white
                                        ),
                                        borderRadius: BorderRadius.circular(90.0),
                                        color: Colors.green
                                    )
                                )
                            )
                          ]
                      ),*/
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.white70,width: 4),
                      image: const DecorationImage(
                          image: AssetImage("media/images/img.png"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                        padding: EdgeInsets.all(7.5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(90.0),
                            color: Colors.green
                        )
                    )
                )
              ],
            ),



            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Rommie",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Find your next roommate",
                    style: TextStyle(
                        color: Color.fromRGBO(217, 217, 217, 1)

                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

           Row(children: [Expanded(child:  Container(
             padding: EdgeInsets.all(2),
             decoration: const BoxDecoration(
               borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) ),
               color: Colors.white,

             ),
             height: 50.0,
             child: Padding(
               padding:
               const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   //Let'  Filtre("man"),s create a custom widget for our story button
                   Filtre("man"),
                   Filtre("man"),
                   Filtre("man"),
                   Filtre("man"),
                   Filtre("man"),
                   Filtre("man"),
                 ],
               ),
             ),
           ))],),
      

      
            //Now let's create our chat timeline
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,

                ),
                padding: EdgeInsets.all(15),

                

                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                  child: ListView(
                    children: [
                      //Now let's create our chat tile custom widget
                      card("ghjk"),
                      card("ghjk"),

                      card("ghjk"),

                      card("ghjk"),

                      card("ghjk"),

                      card("ghjk"),

                      card("ghjk"),

                      card("ghjk"),

                      card("ghjk"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),


      ),
    );

  }

}