import 'package:flutter/material.dart';
import 'package:todoey_app/styles/decorations.dart';
import 'package:todoey_app/styles/text_styles.dart';
import 'package:todoey_app/widgets/animated_welcome_screen.dart';
import 'package:todoey_app/widgets/app_logo.dart';
import 'package:todoey_app/widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  final String name;

  const WelcomeScreen({
    required this.name,
    super.key,
  });

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  String? email;
  String? password;

  late AnimationController _controller;
  late Animation _animation;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(
        seconds: 2,
      ),
      vsync: this,
    );
//анимация для изменения цвета фона
    _animation = ColorTween(
      begin: Colors.blueAccent,
      end: Colors.white,
    ).animate(
      _controller,
    );

    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                top: 55.0,
              ),
            ),
            AnimatedWelcomeScreen(
              opacity: _controller.value,
              animation: _controller,
            ),
            const SizedBox(
              height: 30.0,
            ),
            const AppLogo(
              height: 150.0,
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: _emailController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
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
              controller: _passwordController,
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: Decorations.textField.copyWith(
                hintText: 'Password',
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Text(
                  "Don't have account?",
                  style:TextStyles.text,
                ),
                TextButton(
                  onPressed: _openRegistrationScreen,
                  child: const Text(
                    'Registration',
                    style: TextStyles.registrationButton,
                  ),
                ),
              ],
            ),
            RoundedButton(
              onPressed: _openTasksScreen,
              text: 'Log In',
              color: const Color.fromARGB(
                255,
                29,
                115,
                186,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openRegistrationScreen() async {
    await Navigator.pushNamed(
      context,
      '/registration',
      arguments: '/registration',
    );
  }

  Future<void> _openTasksScreen() async {
    await Navigator.pushNamed(
      context,
      '/tasks',
      arguments: '/tasks',
    );
  }
}
