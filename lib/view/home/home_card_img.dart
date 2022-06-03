import 'package:flutter/material.dart';

Widget card(String name,int age,double budget, String localisation, int capacity,String profile){
  return      InkWell(
      onTap: (){

      },
      child: Container(

        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
        padding: EdgeInsets.all(10),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color(0xff3f5f7f9),
        ),
        child: Column(
          children: [

            SizedBox(
              height: 150,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  scrollimage("media/images/romme1.png"),
                  scrollimage("media/images/romme2.jpg"),
                  scrollimage("media/images/romme3.jpg"),

                ],
              ),
            ),



            Container(child:ListTile(
              title: Text("Name",style: TextStyle(color: Color(0xff060935)),),
              subtitle: Text("27 Ago",style: TextStyle(color: Color(0xff060935)),),
              leading:     Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff00A3FF),
                      backgroundImage: AssetImage("media/images/img.png"),
                      radius: 25.0,
                    ),

                  ]
              ),
              trailing: Icon(Icons.location_on_outlined,color: Colors.red,),

            ),),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("${capacity} personn"),
                Row(children: [ Text(budget.toString()),SizedBox(width: 1,),Text("  DH/month",style: TextStyle(fontWeight: FontWeight.w800),)],)
              ],)


          ],

        ),)
  );
}

Widget scrollimage(String image){

  return  Container(
    height: 300,
    width: 300,

    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueAccent,
        border: Border.all(color: Colors.white70,width: 3),
        image:  DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover)),
  );

}