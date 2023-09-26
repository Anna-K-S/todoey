import 'package:flutter/material.dart';
import 'package:todoey_app/screens/registration_screen.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:todoey_app/screens/welcome_screen.dart';

void main() => runApp(
      const Todoey(),
    );

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      onGenerateRoute: (settings) => switch (settings.name) {
        '/welcome' => MaterialPageRoute(
            builder: (_) => WelcomeScreen(
              name: settings.arguments.toString(),
            ),
          ),
        '/tasks' => MaterialPageRoute(
            builder: (_) => TasksScreen(
              name: settings.arguments.toString(),
            ),
          ),
        '/registration' => MaterialPageRoute(
            builder: (_) => RegistrationScreen(
              name: settings.arguments.toString(),
            ),
          ),
        _ => null
      },
    );
  }
}
