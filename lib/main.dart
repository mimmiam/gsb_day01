import 'package:flutter/material.dart';
import 'package:gsb_day01/contactus.dart';
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
