import 'package:flutter/material.dart';
import 'package:todoey_app/screens/registration_screen.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:todoey_app/service/auth_service.dart';
import 'package:todoey_app/styles/decorations.dart';
import 'package:todoey_app/styles/text_styles.dart';
import 'package:todoey_app/widgets/animated_welcome_screen.dart';
import 'package:todoey_app/widgets/app_logo.dart';
import 'package:todoey_app/widgets/error_dialog.dart';
import 'package:todoey_app/widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const path = '/welcome';

  const WelcomeScreen({
    super.key,
  });

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Color?> _background;

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
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      _controller,
    );
    _background = ColorTween(
      begin: Colors.blueAccent,
      end: Colors.white,
    ).animate(_controller);

    _controller.forward();
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
      body: Stack(
        children: [
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _background,
              builder: (_, __) => ColoredBox(
                color: _background.value!,
              ),
            ),
          ),
          Padding(
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
                AnimatedWelcomeText(
                  opacity: _animation,
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
                    _emailController.text = value;
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
                    _passwordController.text = value;
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
                      style: TextStyles.text,
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
                  onPressed: _logIn,
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
        ],
      ),
    );
  }

  Future<void> _openRegistrationScreen() async {
    await Navigator.pushNamed(
      context,
      RegistrationScreen.path,
      arguments: '/registration',
    );
  }

  Future<void> _openTasksScreen() async {
    await Navigator.pushNamed(
      context,
      TasksScreen.path,
      arguments: '/tasks',
    );
  }

  Future<void> _logIn() async {
    try {
      await AuthService().singIn(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );
      // если вход успешный, переходим в ChatScreen
      _openTasksScreen();
    } catch (e) {
      _errorSingIn();
    }
  }

  void _errorSingIn() {
    showDialog(
      context: context,
      builder: (context) => ErrorDialog(
        errorMessage: 'Invalid login or password. Please try again.',
        onPressed: _closeDialog,
      ),
    );
  }

  void _closeDialog() {
    Navigator.of(context).pop();
  }
}
