import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static AuthService? _instance;

  AuthService._();

  factory AuthService() => _instance ??= AuthService._();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Future<void> registration(String email, String password) =>
      _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

  Future<void> singIn(String email, String password) =>
      _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

  Future<void> singOut() => _auth.signOut();
}
