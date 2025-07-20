import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double height;

  const AppLogo({
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'icon',
      child: SizedBox(
        height: height,
        child: const Image(
          alignment: Alignment.center,
          image: AssetImage(
            'assets/images/todo_icon.png',
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> main
