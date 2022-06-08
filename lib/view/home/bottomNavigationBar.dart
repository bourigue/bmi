
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../controller/BNBControler.dart';



class Example extends StatelessWidget {
 ControllerBnb  c=Get.find();


  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
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
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 20,
      title: const Text('GoogleNavBar'),
    ),
    body: Center(
      child: _widgetOptions.elementAt(c.tabIndex),
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
          child:GetBuilder<ControllerBnb>(
            init:ControllerBnb() ,
              builder: (n)=> GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.add,
                text: c.listBNB[0],
              ),
              GButton(
                icon: Icons.add,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.add,
                text: 'Search',
              ),
              GButton(
                icon: Icons.add,
                text: 'Profile',
              ),
            ],
            selectedIndex: c.tabIndex,
            onTabChange: (index) {

                c.changeTabIndex(index);

            },
          )),
        ),
      ),
    ),
  );
  }
}

