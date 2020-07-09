import 'package:codeit/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  _signOut(BuildContext context) {
    BlocProvider.of<AuthBloc>(context).add(SignOut());
  }

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
          FlatButton(child: Text('Sign Out'), onPressed: () => _signOut(context),)
        ],
      ),
    );
  }
}
