
import 'package:Conexstudios/mensajes/chat_screen_message.dart';
import 'package:flutter/material.dart';

class HomePageMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frenzy Chat"),
        ),
        body: ChatScreen());
  }
}
