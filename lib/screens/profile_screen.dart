import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 50.0,
          ),
        ],
      ),
    );
  }
}
