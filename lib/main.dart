import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
<<<<<<< HEAD

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };
=======
import 'lost_password.dart';

void main() => runApp(MyApp());
  final routes = <String, WidgetBuilder>{
    PageLogin.tag: (context) => PageLogin(),
    HomePage.tag: (context) => HomePage(),
    LostPage.tag: (context) => LostPage(),
  };

class MyApp extends StatelessWidget {
>>>>>>> test

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
=======
      title: 'Login Conex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Montserrat',
      ),
      home: PageLogin(),
      routes: routes,
      );
>>>>>>> test
  }
}