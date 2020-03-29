part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState{}

class UnAuthenticated extends AuthState {}

class AuthLoading extends AuthState {}

class Authenticated extends AuthState {
  final User _user;

  get user => _user;

  Authenticated({user}) : assert(user != null), _user = user;
}

class AuthError extends AuthState {}