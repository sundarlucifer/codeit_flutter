import 'package:codeit/blocs/auth/auth_bloc.dart';
import 'package:codeit/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _navigateToProfile(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text(
              'HOME',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () => _navigateToProfile(context),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              RaisedButton(
                child: Text('Sign Out'),
                onPressed: () => _signOut(context),
              )
            ]),
          ),
        ],
      ),
    );
  }

  _signOut(BuildContext context) {
    BlocProvider.of<AuthBloc>(context).add(SignOut());
  }
}
