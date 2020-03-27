import 'package:codeit/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Codeit',
      theme: ThemeData(
        primaryColor: Color(0xffFF8787),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
