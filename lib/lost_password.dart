import 'package:flutter/material.dart';

class LostPage extends StatelessWidget {
  static String tag = "lost-page";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost password',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recuperar contraseña'),
        ),
        body: Center(
          child: Text('Ingrese su Email'),
        ),
      ),
    );
  }
}