import 'package:flutter/material.dart';
import 'package:todoey_app/styles/decorations.dart';
import 'package:todoey_app/widgets/app_logo.dart';
import 'package:todoey_app/widgets/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  final String name;

  const RegistrationScreen({
    super.key,
    required this.name,
  });

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Flexible(
              child: AppLogo(
                height: 200.0,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: Decorations.textField.copyWith(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: Decorations.textField.copyWith(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
