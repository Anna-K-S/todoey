import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onPressed;

  const ErrorDialog({
    required this.errorMessage,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Error',
      ),
      content: Text(
        errorMessage,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'OK',
          ),
        ),
      ],
    );
  }
}
