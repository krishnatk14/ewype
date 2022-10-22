import 'package:flutter/material.dart';

class SplashTwo_View extends StatefulWidget {
   SplashTwo_View({Key? key}) : super(key: key);

  @override
  State<SplashTwo_View> createState() => _SplashTwo_ViewState();
}

class _SplashTwo_ViewState extends State<SplashTwo_View> {

  //Variables declared for responsive design
  late double _deviceHeight;
  late double  _deviceWidth;

  @override
  Widget build(BuildContext context) {

    //Variables attached to Media Queries
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        children: [
          _firstElement(),

          _secondElement(),

          _thirdElement(),

          _fourthElement(),
        ],
      ),
    );
  }

  //UI elements for this screen
  //1st Element - Image Asset
  Widget _firstElement(){
    return Container(
      height: _deviceHeight*0.25,
      width: _deviceWidth*0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/intro_logo.png"),
        ),
      ),
    );
  }
  //2nd Widget - Text
  Widget _secondElement(){
    return Text("Your trusted car service place",
      style: TextStyle(fontSize: 16),);
  }
  //3rd Widget - Image Asset
  Widget _thirdElement(){
    return Container(
      height: _deviceHeight*0.25,
      width: _deviceWidth*0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/intro_icon1.png"),

        ),),);
  }
  //4th Widget - Text
  Widget _fourthElement(){
    return Text("Get your car washed by professional",
      style: TextStyle(fontSize: 16),);
  }
}
