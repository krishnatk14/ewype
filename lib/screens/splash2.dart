import 'package:ewype/screens/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../view/splash2_view.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({Key? key}) : super(key: key);

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {

  @override
  void initState() {

    super.initState();

    // After 6 seconds this screen will be routed the main screen
    Timer(Duration(seconds: 6),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=> LoginPage()
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashTwo_View(),
    );
  }
}
