import 'package:Conexstudios/mensajes/home_page_message.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Chat App", home: HomePageMessage());
  }
}
