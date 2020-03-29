import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final message;

  const LoadingScreen({this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildBody(context),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return message!=null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              SizedBox(height: 12.0,),
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation(Theme.of(context).primaryColor),
                strokeWidth: 2.0,
              ),
            ],
          )
        : CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
            strokeWidth: 2.0,
          );
  }
}
