import 'package:bmi/view/home/home_body.dart';
import 'package:bmi/view/page1.dart';

import 'package:bmi/view/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/binding_controller.dart';
import 'controller/controller.dart';
void main(){

 runApp(GetMaterialApp(
     initialBinding: bindingcontroller(),
     home: homecoloco(),
     getPages: [
GetPage(name: "/Home", page: ()=>Home()),
GetPage(name: "/page2", page: ()=>page2()),
     ],
   theme: ThemeData(
     primaryColor: Colors.indigoAccent,
     visualDensity: VisualDensity.adaptivePlatformDensity,
     scaffoldBackgroundColor: Colors.green,
     brightness: Brightness.light

   ),
debugShowCheckedModeBanner: false,

 ));
}

class home extends StatelessWidget{


 //final  c=Get.lazyPut(()=>Controller(),fenix: true);
 @override
 Widget build(BuildContext context) {
  return Scaffold(
backgroundColor:Colors.blueAccent ,


   body:Center(
    child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
      MaterialButton(onPressed: (){ Get.to(page2());}, child: Text("page 2")),
      MaterialButton(onPressed: (){ Get.to(Home());}, child: Text("page 1")),
     ],),
   ),
  );
 }

}














































class home3 extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}
class _HomePageState extends State<home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Good Morning, Ali",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueAccent,
                          image: const DecorationImage(
                              image: AssetImage("media/images/img.png"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      enabled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 30,
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
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
                    departmentCard("Development", 88, "techies",
                        Colors.blueAccent, "👨‍💻"),
                    departmentCard("UI/UX design", 45, "creatives",
                        Colors.orangeAccent, "👨‍🎨"),
                    departmentCard("QA engineers", 24, "helpers",
                        Colors.redAccent, "🙅‍♂️"),
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
                  userYouWorkedWith("Sam Smith", "assets/user2.jpg",
                      Colors.blueAccent, "Frontend developer"),
                  userYouWorkedWith("Jacob Gravilov", "assets/user3.jpg",
                      Colors.redAccent, "QA Assisstant"),
                  userYouWorkedWith("Stephan Filescher", "assets/user4.jpg",
                      Colors.orangeAccent, "UI/UX Designer"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget departmentCard(
      String name, int number, String title, Color color, String emoji) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                      emoji,
                      style: const TextStyle(fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                number.toString() + " " + title,
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userYouWorkedWith(
      String name, String image, Color color, String jobTitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          String _job;
          if (color == Colors.blueAccent) {
            _job = "Developer";
          } else if (color == Colors.redAccent) {
            _job = "Engineer";
          } else {
            _job = "Designer";
          }
         /* Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WorkerDetailsPage(
                name: name,
                image: image,
                color: color,
                jobTitle: jobTitle,
                job: _job,
              ),
            ),
          );*/
        },
        child: Container(
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(
            color: color.withOpacity(0.07),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: ListTile(
              leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              title: Text(
                name,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle:
              Text(jobTitle, style: const TextStyle(color: Colors.black54)),
              trailing: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Center(
                      child: Icon(
                        Icons.update,
                        size: 20,
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



