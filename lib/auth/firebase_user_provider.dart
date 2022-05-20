import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HammamiaFirebaseUser {
  HammamiaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HammamiaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HammamiaFirebaseUser> hammamiaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HammamiaFirebaseUser>(
            (user) => currentUser = HammamiaFirebaseUser(user));
