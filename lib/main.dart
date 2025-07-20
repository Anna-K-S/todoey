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

      initialRoute: WelcomeScreen.path,
      onGenerateRoute: (settings) => switch (settings.name) {
        WelcomeScreen.path => MaterialPageRoute(
            builder: (_) => const WelcomeScreen(),
          ),
        TasksScreen.path => MaterialPageRoute(
            builder: (_) => const TasksScreen(),
          ),
        RegistrationScreen.path => MaterialPageRoute(
            builder: (_) => const RegistrationScreen(),
          ),
        _ => null

      home: TasksScreen(),
      
     

    );
  }
}
