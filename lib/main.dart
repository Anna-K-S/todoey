import 'package:flutter/material.dart';
import 'package:todoey_app/screens/tasks_screen.dart';


void main() => runApp(
      const Todoey(),
    );

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
      
     
    );
  }
}
