import 'package:flutter/material.dart';

class NavDrawerUtil extends Drawer {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(top: 24.0),
      width: mediaQuery.size.width * 0.6,
      height: mediaQuery.size.height,
      color: Theme.of(context).primaryColor,
      child: Column(

      ),
    );
  }
}