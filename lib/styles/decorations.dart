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
<<<<<<< HEAD
=======

>>>>>>> main
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    hintText: 'Type your task here...',
    border: InputBorder.none,
  );

  static const textField = InputDecoration(
    hintText: ' ',
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          15.0,
        ),
      ),
    ),
    enabledBorder: OutlineInputBorder(
<<<<<<< HEAD
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
=======
      borderSide: BorderSide(
        color: Colors.lightBlueAccent,
        width: 1.0,
      ),
>>>>>>> main
      borderRadius: BorderRadius.all(
        Radius.circular(
          15.0,
        ),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      borderRadius: BorderRadius.all(
        Radius.circular(
          15.0,
        ),
      ),
    ),
  );
<<<<<<< HEAD
}
=======
}

          contentPadding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          hintText: 'Type your task here...',
          border: InputBorder.none,
        );
}

>>>>>>> main
