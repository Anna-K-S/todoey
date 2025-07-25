import 'package:flutter/material.dart';

class TextStyles {
  static const title = TextStyle(
    color: Colors.white,
    fontSize: 50.0,
    fontWeight: FontWeight.w700,
  );

  static const subtitle = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
  );

  static const registrationButton = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(
      255,
      48,
      153,
      238,
    ),
  );

  static const text = TextStyle(
      fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500);

  static const completedTask = TextStyle(
    decoration: TextDecoration.lineThrough,
    color: Colors.grey,
  );
}
