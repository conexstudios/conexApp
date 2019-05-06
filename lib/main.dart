import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Conex',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome Conex'),
        ),
        body: Center(
          child: Text('Hola Yotman'),
        ),
      ),
    );
  }
}
