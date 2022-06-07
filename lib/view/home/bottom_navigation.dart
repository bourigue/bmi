import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../controller/BNBControler.dart';
import 'home2_body.dart';

class Example extends StatelessWidget{
  final  ControllerBnb controller=Get.find();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  List<Widget> _widgetOptions = <Widget>[
    home(),
    Text(
      'hassa',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xff4943f0),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child:GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Color(0xff4943f0),
                color:Color(0xff3a3a3b),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',

                  ),
                  GButton(
                    icon: Icons.add,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.map,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {



                  /*
                setState(() {
                  _selectedIndex = index;
                });*/
                //  c.index(index,_selectedIndex);
                },
              ),


          ),
        ),
      ),
    );
  }
}


