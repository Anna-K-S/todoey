import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:todoey_app/data/user.dart';

class AuthService {
  AuthService();

  final FirebaseAuth _auth = FirebaseAuth.instance;



  User? get currentUser => _auth.currentUser != null
      ? User(email: _auth.currentUser!.email ?? '')
      : null;

  Future<User> registration(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    

    return User(email: email);
  }

  Future<User> singIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return User(email: email);
  }

  Future<void> singOut() => _auth.signOut();



 
 
}
