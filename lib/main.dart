import 'package:codeit/blocs/auth/auth_bloc.dart';
import 'package:codeit/screens/home_screen.dart';
import 'package:codeit/screens/loading_screen.dart';
import 'package:codeit/screens/login_screen.dart';
import 'package:codeit/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Codeit',
      theme: ThemeData(
        primaryColor: Color(0xffFF8787),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AuthBloc>(
        create: (_) => AuthBloc(authService: AuthRepository())..add(AppStarted()),
        child: MyApp(),
      ),
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        return _buildBody(authState);
      },
    );
  }

  _buildBody(AuthState authState) {
    if (authState is AuthInitial) {
      return LoadingScreen(message: 'Loading',);
    } else if (authState is UnAuthenticated) {
      return LoginScreen();
    } else if (authState is AuthLoading) {
      return LoadingScreen(message: 'Signing in/out');
    } else if (authState is Authenticated) {
      return HomeScreen();
    } 
    return Center(child: Text('Something went wrong. Please try Again.'),);
  }
}
