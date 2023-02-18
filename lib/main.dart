import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dartpro/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dartpro/otp.dart';
import 'package:dartpro/phone.dart';
//import 'package:dartpro/splash.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/splash.png',
                  width: 250,
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        duration: 5000,
        backgroundColor: Color.fromARGB(201, 232, 216, 224),
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: MyPhone(),
      ),
      //initialRoute: 'splash',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': ((context) => MyOtp()),
        'home': (context) => MyHome(),
        //'splash': (context) => Splash(),
      }));
}
