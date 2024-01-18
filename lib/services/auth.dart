import 'package:firebase_auth/firebase_auth.dart';
//import 'package:hewa_tell_air/services/database.dart';
import 'package:hewa_tell_air/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user object based on Firebase User
  Users? _userFromUser(User? user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<Users?> get person {
    return _auth
        .authStateChanges()
        //.map((User? user) => _userFromUser(user));-- can also use this
        .map(_userFromUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      //create a new document for the user with the uid
      //await DatabaseService(uid: user!.uid)
      // .updateUserData(1.0, 1.0, 1.0, 1.0, 1.0);
      return _userFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(
        e.toString(),
      );
      return null;
    }
  }
}
