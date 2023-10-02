import 'package:flutter/material.dart';


class DeletingTaskWidget extends StatelessWidget {
  final String title;
  final VoidCallback onDismissed;
  final CheckboxListTile checkBox;

  const DeletingTaskWidget({
    required this.title,
    required this.onDismissed,
    required this.checkBox,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(title),
      onDismissed: (direction) {
        onDismissed();
      },
      background: Container(
        color: Colors.red,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      child: checkBox,
    );
  }
}
