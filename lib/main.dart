import 'package:codeit/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Codeit',
      theme: ThemeData(
          primaryColor: Colors.redAccent,
          scaffoldBackgroundColor: Colors.grey[40]),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
