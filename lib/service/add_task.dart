import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_app/cubit/tasks_cubit.dart';
import 'package:todoey_app/data/todo_task.dart';
import 'package:todoey_app/service/auth_service.dart';
import 'package:todoey_app/service/tasks_service.dart';
import '../styles/decorations.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({
    super.key,
  });

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final TextEditingController _taskController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // экземпляр TasksCubit из контекста.
    final tasksCubit = BlocProvider.of<TasksCubit>(context);

    return AlertDialog(
      title: const Text(
        'Add new task',
      ),
      content: TextField(
        controller: _taskController,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        decoration: Decorations.dialogTask,
      ),
      actions: [
        ElevatedButton.icon(
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

  void _closeDialog(BuildContext context) {
    _taskController.clear();
  }
}
