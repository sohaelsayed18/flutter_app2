import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/imagesPathes.dart';
import 'package:sizer/sizer.dart';


class SplashScreen extends StatelessWidget {
  final Widget? nextScreen;
  const SplashScreen({Key? key,this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hScreen=MediaQuery.of(context).size.height;
    var wScreen=MediaQuery.of(context).size.width;



    return Scaffold(
      backgroundColor: Colors.white,
      body:  AnimatedSplashScreen(
        backgroundColor: Colors.white,
        duration:3000 ,
        nextScreen: nextScreen!,
        splash: LayoutBuilder(
          builder:(context, constraints) =>  Container(
            child: Image.asset(logoPath),

            color: Colors.white,
            width: wScreen,
          ),
        ),
      ),
    );
  }
}
