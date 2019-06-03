import 'dart:async';
import 'dart:io';
// import 'package:Conexstudios/home_page.dart';
import 'package:Conexstudios/lost_password.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// overrides http self-signed certificates

class AppHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext securityContext){
    return HttpClient()
    ..badCertificateCallback =(X509Certificate cert, String host, int port) => true;
  }
}


class PageLogin extends StatefulWidget {
  static String tag = "login-page";
  PageLogin({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PageLoginState createState() => _PageLoginState();
}


class _PageLoginState extends State<PageLogin> {
  // Assing Listener to Text fields
  TextEditingController user =  TextEditingController();
  TextEditingController password = TextEditingController();

  Future<List> _login() async {
    try {
      HttpOverrides.global = AppHttpOverrides();
      await http.post(
          'url',
          body: {
          'user':  user.text, 
          'password':  password.text
        }).then((response) {
        return print('Response status: ${response.statusCode}, Response body: ${response.body}');
      });
    } catch (e) {
      print(e.toString());
    }
  }

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: user,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      controller: password,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          _login();
          //Navigator.of(context).pushNamed(HomePage.tag);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final lostPassword = Material(
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.of(context).pushNamed(LostPage.tag);
        },
        child: Text("Recuperar Contraseña",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.lightBlue,
                fontFamily: "Montserrat")),
      ),
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(height: 35.0),
                  loginButon,
                  SizedBox(height: 15.0),
                  lostPassword,
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
