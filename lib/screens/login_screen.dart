import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/bg_curve_login.svg',
                fit: BoxFit.fitWidth,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70.0,
                    ),
                    CircleAvatar(
                      radius: 75.0,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'FOR YOUR DREAM PLACEMENT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 55.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 47.0),
            child: Text(
              'You are just one step away from the key to your dream company',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 32.0),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20.0),
                splashColor: Theme.of(context).primaryColor,
                highlightColor: Theme.of(context).primaryColor.withOpacity(0.2),
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2.0,
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      left: 15.0,
                      top: 9.0,
                      child: Image(
                        width: 34.0,
                        height: 34.0,
                        image: AssetImage('assets/images/google_logo.png'),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ]),
                ),
              )),
        ],
      ),
    );
  }
}
