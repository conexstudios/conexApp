import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());
  final routes = <String, WidgetBuilder>{
    PageLogin.tag: (context) => PageLogin(),
    HomePage.tag: (context) => HomePage(),
  };

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Conex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Montserrat',
      ),
      home: PageLogin(),
      routes: routes,
      );
  }
}