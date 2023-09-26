import 'package:flutter/material.dart';

class AnimatedWelcomeScreen extends StatelessWidget {
  //уровень прозрачности текста 
  final double opacity;
  final Listenable animation;

  const AnimatedWelcomeScreen({
    required this.opacity,
    required this.animation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      //анимация, которая будет вызывать перестроение виджета
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Opacity(
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
      },
    );
  }
}
