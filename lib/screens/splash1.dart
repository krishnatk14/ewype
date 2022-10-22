import 'package:ewype/screens/splash2.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../view/splash1_view.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({Key? key}) : super(key: key);

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {

  @override
  void initState() {

    super.initState();
    // After 3 seconds this screen will be routed to another screen
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=>SplashTwo()
          ));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashOne_View(),
    );
  }
}
