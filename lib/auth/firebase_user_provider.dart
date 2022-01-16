import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class InventoryFirebaseUser {
  InventoryFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

InventoryFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<InventoryFirebaseUser> inventoryFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<InventoryFirebaseUser>(
        (user) => currentUser = InventoryFirebaseUser(user));
