import 'package:flutter/material.dart';

class SplashOne_View extends StatefulWidget {
  const SplashOne_View({Key? key}) : super(key: key);

  @override
  State<SplashOne_View> createState() => _SplashOne_ViewState();
}

class _SplashOne_ViewState extends State<SplashOne_View> {

  //Variables declared for responsive design
  late double _deviceHeight;
  late double  _deviceWidth;

  @override
  Widget build(BuildContext context) {

    //Variables attached to Media Queries
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
        height: _deviceHeight,
        width: _deviceWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash_background.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: _deviceHeight*0.3,
              width: _deviceWidth*0.3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            )
          ],
        )
    );
  }
}
