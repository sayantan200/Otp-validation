import 'package:dartpro/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dartpro/otp.dart';
import 'package:dartpro/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': ((context) => MyOtp()),
        'home': (context) => MyHome(),
      }));
}
