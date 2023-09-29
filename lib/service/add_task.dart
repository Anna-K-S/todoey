import 'package:flutter/material.dart';
import 'package:todoey_app/styles/decorations.dart';

class AddTaskDialog extends StatefulWidget {
  final Function(String) onTaskAdded;

  const AddTaskDialog({
    required this.onTaskAdded,
    super.key,
  });

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  //контроллер
  final TextEditingController _taskController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //создание диалогового окна для добавления задачи
    return AlertDialog(
      title: const Text(
        'Add new task',
      ),
      //текстовое поле для ввода задачи
      content: TextField(
        controller: _taskController,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        decoration: Decorations.dialogTask,
      ),
      actions: [
        ElevatedButton.icon(
          //при нажатии извлечение текста из текстового поля и удаление начальных и конечных пробелов
          onPressed: _addNewTask,

          icon: const Icon(
            Icons.add,
          ),
          label: const Text(
            'Add',
          ),
        ),
      ],
    );
  }

  void _addNewTask() {
    final String newTaskText = _taskController.text.trim();
    if (newTaskText.isNotEmpty) {
      widget.onTaskAdded(newTaskText);
    }
    _closeDialog(context);
  }

//закрытие диалогового окна и очистка текстового поля
  void _closeDialog(BuildContext context) {
    _taskController.clear();
    Navigator.of(context).pop();
  }
}
