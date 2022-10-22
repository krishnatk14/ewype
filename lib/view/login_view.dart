import 'package:flutter/material.dart';

class LoginPage_View extends StatefulWidget {
  const LoginPage_View({Key? key}) : super(key: key);

  @override
  State<LoginPage_View> createState() => _LoginPage_ViewState();
}

class _LoginPage_ViewState extends State<LoginPage_View> {

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
          GestureDetector(
            child: _thirdElement(),
            onTap: (){
              Navigator.pushNamed(context, "phone");
            },
          )

        ],
      ),
    );
  }

  //1st Element - Image Asset
  Widget _firstElement(){
    return Container(
      height: _deviceHeight*0.25,
      width: _deviceWidth*0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/intro/intro_logo.png"),
        ),
      ),
    );
  }

  //2nd Widget - Text
  Widget _secondElement(){
    return Text("Login/Register",
      style: TextStyle(fontSize: 16),);
  }

  //3rd Widget - Image Asset
  Widget _thirdElement(){
    return Container(
      height: _deviceHeight*0.30,
      width: _deviceWidth*0.30,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/via_phone.png"),

        ),),);
  }
}
