import 'package:flutter/material.dart';
import 'package:todoey_app/styles/decorations.dart';

class AddTask extends StatefulWidget {
  final Function(String) onTaskAdded;

  const AddTask({
    required this.onTaskAdded,
    super.key,
  });

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  //контроллер
  final TextEditingController _taskController = TextEditingController();

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
          onPressed: () {
            final String newTaskText = _taskController.text.trim();
            if (newTaskText.isNotEmpty) {
              widget.onTaskAdded(newTaskText);
            }
            _closeDialog(context);
          },
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

//закрытие диалогового окна и очистка текстового поля
  void _closeDialog(BuildContext context) {
    _taskController.clear();
    Navigator.of(context).pop();
  }
}