import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_app/cubit/tasks_cubit.dart';
import 'package:todoey_app/data/todo_task.dart';
import 'package:todoey_app/service/auth_service.dart';
import 'package:todoey_app/service/tasks_service.dart';
import '../styles/decorations.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({
=======
import 'package:todoey_app/styles/decorations.dart';

class AddTaskDialog extends StatefulWidget {
  final Function(String) onTaskAdded;

  const AddTaskDialog({
    required this.onTaskAdded,
>>>>>>> main
    super.key,
  });

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
<<<<<<< HEAD
=======
  //контроллер
>>>>>>> main
  final TextEditingController _taskController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // экземпляр TasksCubit из контекста.
    final tasksCubit = BlocProvider.of<TasksCubit>(context);

=======
    //создание диалогового окна для добавления задачи
>>>>>>> main
    return AlertDialog(
      title: const Text(
        'Add new task',
      ),
<<<<<<< HEAD
=======
      //текстовое поле для ввода задачи
>>>>>>> main
      content: TextField(
        controller: _taskController,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        decoration: Decorations.dialogTask,
      ),
      actions: [
        ElevatedButton.icon(
<<<<<<< HEAD
          onPressed: () {
            final newTaskText = _taskController.text.trim();
            if (newTaskText.isNotEmpty) {
              final newTask = TodoTask(
                title: newTaskText,
                isCompleted: false,
                id: '',
              
              );

              tasksCubit.addTask(
                newTask.title,
              );
              TasksService.instance.add(AuthService().currentUser!.email, newTask.title);
            }
            _closeDialog(context);
          },
=======
          //при нажатии извлечение текста из текстового поля и удаление начальных и конечных пробелов
          onPressed: _addNewTask,

>>>>>>> main
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

<<<<<<< HEAD
  void _closeDialog(BuildContext context) {
    _taskController.clear();
=======
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
>>>>>>> main
  }
}
