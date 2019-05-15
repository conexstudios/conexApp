import 'dart:async';

import 'package:mysql1/mysql1.dart';

Future main() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(new ConnectionSettings(
        host: '192.168.1.80', 
        port: 3306, user: 'root',
        password: 'sofia2015', 
        db: 'sofia2015'
      )
    );

  // Create a table
  await conn.query(
      'CREATE TABLE users_mb (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255), email varchar(255), age int)');

  // Insert some data
  var result = await conn.query(
      'insert into users (name, email, age) values (?, ?, ?)',
      ['Bob', 'bob@bob.com', 25]);
  print("Inserted row id=${result.insertId}");

  // Query the database using a parameterized query
  var results = await conn
      .query('select name, email from users where id = ?', [result.insertId]);
  for (var row in results) {
    print('Name: ${row[0]}, email: ${row[1]}');
  }

  // Finally, close the connection
  await conn.close();
}