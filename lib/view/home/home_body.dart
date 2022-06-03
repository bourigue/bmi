import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class homecoloco extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color:Colors.white,
       buttonBackgroundColor: Color.fromRGBO(73, 67, 240, 1),
       backgroundColor: Colors.white,
       // key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {

        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(
                height: 8,
              ),

             // search input
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) ),
                  color: Colors.white,

                ),

                child: Column(

                  children: [



                    SizedBox(
                      height: 36,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "You recenty worked with",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        card("ghjk",56,456,"ghjk",66,"ghjk"),
                        card("ghjk",56,456,"ghjk",66,"ghjk"),

                        card("ghjk",56,456,"ghjk",66,"ghjk"),

                        card("ghjk",56,456,"ghjk",66,"ghjk"),



                      ],
                    )
                  ],
                ),

              )




            ],
          ),
        ),
      ),
    );

  }

}

Widget Filtrename(String name){
  return      InkWell(
    onTap: (){

      print("Filtring ");
    },
    child: Container(

      margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(5),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            border: Border.all(color: Colors.black12)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("Filtters",style: TextStyle(fontSize:15),),SizedBox(width: 4,),Text("0",style: TextStyle(fontSize:15,color: Colors.red),)],)),
  );
}
Widget Filtre(String name){
  return      InkWell(
    onTap: (){

      print("jdj");
    },
    child: Container(

        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(5),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            border: Border.all(color: Colors.black12)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text(name,style: TextStyle(fontSize:15),),Icon(Icons.delete_forever,color:Colors.red,size:15,)],)),
  );
}
Widget card(String name,int age,double budget, String localisation, int capacity,String profile){
  return      InkWell(
    onTap: (){
      print("jdj");
    },
    child: Container(
        height:300,
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(10),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xff3f5f7f9),
            ),
        child: Column(
children: [

  Container(

decoration: BoxDecoration(


    borderRadius: BorderRadius.all(Radius.circular(5)),

        image: DecorationImage(
            image: AssetImage("media/images/img.png"),
        fit: BoxFit.cover)),

    child:   Stack(
      children: [
        Container(

        height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blueAccent,
              border: Border.all(color: Colors.white70,width: 3),
              image: const DecorationImage(
                  image: AssetImage("media/images/img.png"),
                  fit: BoxFit.cover)),
        ),

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
    trailing: Icon(Icons.local_library,color: Colors.red,),

  ),)


],

        ),)
  );
}