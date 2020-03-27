import 'package:codeit/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  _navigateToProfile(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(child:Text('Signed In'));
    return CustomScrollView(
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
              onPressed: _navigateToProfile(context),
            )
          ],
        ),
      ],
    );
  }
}
