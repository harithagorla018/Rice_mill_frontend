import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rice_mill_frontend/LoginScreen/Login/loginscreen.dart';

import 'package:lottie/lottie.dart';
// import 'package:login_signup_screen/login.dart';
// import 'package:login_signup_screen/signup.dart';
import './LoginScreen/Login/login.dart';
import './LoginScreen/Login/signup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
        debugShowCheckedModeBanner: false,
        // title: 'Splash Screen',
        home: Center(

          child: AnimatedSplashScreen( 
            splash: Lottie.asset(
              'assets/splashscreen2.json',
              width: 300,
              height: 500,
              fit: BoxFit.cover,
            ),

            nextScreen:  HomePageScreen(
              // screenHeight: 0,

            ),
            
            // splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.topToBottom,
            backgroundColor: Colors.yellow,

            duration: 5000,
            
          ),  
       
        ));
  }
}
