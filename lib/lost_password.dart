import 'package:Conexstudios/login_page.dart';
import 'package:flutter/material.dart';

class LostPage extends StatefulWidget {
  static String tag = "lost-page";
  LostPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LostPageState createState() => _LostPageState();
}

class _LostPageState extends State<LostPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final questionOnetext = Container(
      child: Material(
        color: Color(0xffffff),
        child: Text(
          '1. ' + '¿...?',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
    final questionOne = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "...",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final questionTwotext = Container(
      child: Material(
        color: Color(0xffffff),
        child: Text(
          '2. ' + '¿...?',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
    final questionTwo = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "...",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final questionButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.of(context).pushNamed(PageLogin.tag);
        },
        child: Text("Listo",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
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
                  questionOnetext,
                  SizedBox(height: 25.0),
                  questionOne,
                  SizedBox(height: 15.0),
                  questionTwotext,
                  SizedBox(height: 25.0),
                  questionTwo,
                  SizedBox(height: 50.0),
                  questionButon
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
