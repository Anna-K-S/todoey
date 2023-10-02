import 'package:flutter/material.dart';
import 'package:todoey_app/screens/registration_screen.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:todoey_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todoey_app/service/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const Todoey(),
  );
}

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
      },
    );
  }
}
