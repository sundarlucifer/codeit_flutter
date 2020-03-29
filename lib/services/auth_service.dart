import 'package:codeit/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthService {
  signInWithGoogle();
  Future<User> getUser();
  Future<bool> isSignedIn();
  signOut();
}

class AuthRepository extends AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  signInWithGoogle() async {
    GoogleSignInAuthentication googleSignInAuthentication = await (await _googleSignIn.signIn()).authentication;

    await _auth.signInWithCredential( GoogleAuthProvider.getCredential(idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken) );
  }

  @override
  getUser() async {
    FirebaseUser user = await _auth.currentUser();
    return User(uid: user.uid, name: user.displayName);
  }

  @override
  isSignedIn() async {
    FirebaseUser user = await _auth.currentUser();
    return user != null;
  }

  @override
  signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
