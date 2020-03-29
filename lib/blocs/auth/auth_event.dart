part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AppStarted extends AuthEvent {}

class SignIn extends AuthEvent {}

class SignOut extends AuthEvent {}
