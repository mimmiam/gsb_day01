import 'package:flutter/material.dart';
import 'package:gsb_day01/contact.dart';
import 'package:gsb_day01/profile.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/counter': ((context) => CounterScreen()),
        '/contact': ((context) => ContactScreen()),
        '/profile': ((context) => ProfileCard()),
      },
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.purple,
        secondaryHeaderColor: Colors.pink,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ProfileCard(),
    );
  }
}
