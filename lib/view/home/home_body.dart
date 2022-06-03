import 'package:flutter/material.dart';

class homecoloco extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) ),
                    color: Colors.white,

                  ),

                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Departments",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
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

