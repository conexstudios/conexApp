import 'package:Conexstudios/login_page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
class SplahScreen extends StatefulWidget {
  @override
  _MyAppState createState() =>  _MyAppState();
}

class _MyAppState extends State<SplahScreen> {
  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
      seconds: 5,
      navigateAfterSeconds:  PageLogin(),
      image:  Image.asset('assets/logo.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader:  TextStyle(),
      photoSize: 80.0,
      loaderColor: Colors.lightBlue,
    );
  }
}

