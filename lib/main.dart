
import 'package:ewype/screens/firstPage.dart';
import 'package:ewype/screens/getotp.dart';
import 'package:ewype/screens/login.dart';
import 'package:ewype/screens/login_phonenumber.dart';
import 'package:ewype/screens/splash2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/splash1.dart';

void main() async{
  //Initializing firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(

    routes: {
      "login" : (context) => LoginPage(),
      "phone" : (context) => Login_PhoneNumber(),
      "otp" : (context) => GetOTP()
    },

    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,),
    home: SplashOne()

  ));
}

