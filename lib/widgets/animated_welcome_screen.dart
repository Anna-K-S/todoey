import 'package:flutter/material.dart';

class AnimatedWelcomeText extends StatelessWidget {
  //уровень прозрачности текста
  final Animation<double> opacity;

  const AnimatedWelcomeText({
    required this.opacity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: const Text(
        //анимируемый текст
        'Welcome to Todoey',
        style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}