import 'package:flutter/material.dart';
import 'package:flutter_login_ui/login_page.dart';
import 'package:flutter_login_ui/lost_password.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final yotman = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 75.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/negro.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bienvenido Yotman',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = SingleChildScrollView(
      child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[yotman, welcome, lorem],
      ),
    ),
    );

    return Scaffold(
      body: body,
      appBar: AppBar(
        title: Text('AppConex'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Material(
              color: Colors.transparent, 
              child: Text('Yotman'),
              textStyle: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat' ),
              ),
              accountEmail: Material(
              color: Colors.transparent, 
              child: Text('yotmancito@gmail.com'),
              textStyle: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat' ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/negro.png'),
              ),
            ),
            ListTile(
            title: Text('Login', style: TextStyle(
              fontSize: 20.00
            ) ,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (BuildContext context) => PageLogin()));
            },
            ),
            Divider(
              color: Colors.blueAccent,
              height: 5.0,
            ),
             ListTile(
            title: Text('Recuperar Contraseña', style: TextStyle(
              fontSize: 20.00
            ) ,),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (BuildContext context) => LostPage()));
            },
            ),
            Divider(
              color: Colors.blueAccent,
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
