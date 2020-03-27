import 'package:codeit/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  void _loginUser(context) {
    // TODO: Change to pushReplacement
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _getBg(screenHeight: MediaQuery.of(context).size.height),
          _getBanner(screenHeight: MediaQuery.of(context).size.height),
          _getSignInPrompt(context: context),
        ],
      ),
    );
  }

  _getBg({screenHeight}) {
    return Container(
      height: screenHeight * 0.6,
      child: SvgPicture.asset(
        'assets/images/bg_curve_login.svg',
        fit: BoxFit.fill,
      ),
    );
  }

  _getBanner({screenHeight}) {
    return Container(
      height: screenHeight * 0.6,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 75.0,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 12.0),
            Text(
              'FOR YOUR DREAM PLACEMENT',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getSignInPrompt({context}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _getText(),
        _getButton(context: context),
      ],
    );
  }

  _getText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        'You are just one step away from the key to your dream company',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  _getButton({context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 20.0),
      child: InkWell(
        onTap: () => _loginUser(context),
        borderRadius: BorderRadius.circular(20.0),
        splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
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
      ),
    );
  }
}
