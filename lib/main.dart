import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_app/cubit/auth_cubit.dart';
import 'package:todoey_app/screens/registration_screen.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:todoey_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todoey_app/service/auth_service.dart';
import 'package:todoey_app/service/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(authService: AuthService()),
      child: const Todoey(),
    ),
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
            builder: (_) => TasksScreen(
              userEmail: settings.arguments as String,
            ),
          ),
        RegistrationScreen.path => MaterialPageRoute(
            builder: (_) => const RegistrationScreen(),
          ),
        _ => null
      },
    );
  }
}
