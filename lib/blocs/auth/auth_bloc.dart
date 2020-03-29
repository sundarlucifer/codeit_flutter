import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:codeit/models/user.dart';
import 'package:codeit/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;

  AuthBloc({@required authService})
      : assert(authService != null),
        _authService = authService;

  @override
  AuthState get initialState => AuthInitial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    //TODO: Implement AuthError and AuthLoading
    if (event is AppStarted) {
      yield* mapIsAuthenticated();
    } else if (event is SignIn) {
      yield* mapSignIn();
    } else if (event is SignOut) {
      yield* mapSignOut();
    }
  }

  Stream<AuthState> mapIsAuthenticated() async* {
    if (await _authService.isSignedIn()) {
      User user = await _authService.getUser();
      yield Authenticated(user: user);
    } else {
      yield UnAuthenticated();
    }
  }

  Stream<AuthState> mapSignIn() async* {
    // TODO: Listen for auth error
    yield AuthLoading();
    await _authService.signInWithGoogle();
    
    yield* mapIsAuthenticated();
  }

  Stream<AuthState> mapSignOut() async* {
    yield AuthLoading();
    await _authService.signOut();
    yield UnAuthenticated();
  }
}
