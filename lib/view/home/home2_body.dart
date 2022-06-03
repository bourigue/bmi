import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'home_body.dart';
import 'home_card_img.dart';

class homecoloco2 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4943f0),
        body:Column(


          children: [
        Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff00A3FF),
                              backgroundImage: AssetImage("media/images/img.png"),
                              radius: 25.0,
                            ),

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
                      image: const DecorationImage(
                          image: AssetImage("media/images/img.png"),
                          fit: BoxFit.cover)),
                ),

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
            Container(
              height:50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(

                decoration: InputDecoration(
                    enabled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Search by city",
                    contentPadding: EdgeInsets.symmetric(horizontal: 28,vertical: 4)

                ),
              ),

            ),
           SizedBox(height: 30,)
           ,

           Row(
             children: [Expanded(child:  Container(
              //padding: EdgeInsets.only(top: 15),
               padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
             decoration: const BoxDecoration(
               borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) ),
               color: Colors.white,

             ),
             height: 60.0,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   //Let'  Filtre("man"),s create a custom widget for our story button
                   Filtrename("Filtre"),
                   Filtre("man"),
                   Filtre("woman"),
                   Filtre("room"),
                   Filtre("fa9ir"),
                   Filtre("mgarad"),
                   Filtre("mhansar"),
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
                      card("ghjk",56,456,"ghjk",66,"ghjk"),
                      card("ghjk",56,456,"ghjk",66,"ghjk"),
                      card("ghjk",56,456,"ghjk",66,"ghjk"),
                      card("ghjk",56,456,"ghjk",66,"ghjk"),
                      card("ghjk",56,456,"ghjk",66,"ghjk"),
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