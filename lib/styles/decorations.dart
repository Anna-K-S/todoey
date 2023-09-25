import 'package:flutter/material.dart';

class Decorations {
  static const taskField = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(
        20.0,
      ),
      topRight: Radius.circular(
        20.0,
      ),
    ),
  );

  static const dialogTask = InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          hintText: 'Type your task here...',
          border: InputBorder.none,
        );
}