import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/DashbordPages.dart';
import '../home/bottomNavigationBar.dart';


class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icons.home,
            nextScreen: DashboardPage(),
            splashTransition: SplashTransition.scaleTransition,
           // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue,
        ));
  }
}


