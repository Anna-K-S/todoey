import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_app/cubit/tasks_cubit.dart';
import 'package:todoey_app/data/todo_task.dart';
import 'package:todoey_app/service/add_task.dart';
import 'package:todoey_app/styles/decorations.dart';
import 'package:todoey_app/styles/text_styles.dart';
import 'package:todoey_app/widgets/deleting_task.dart';

class TasksScreen extends StatefulWidget {
  static const path = '/tasks';
  final String userEmail;

  const TasksScreen({
    super.key,
    required this.userEmail,
  });

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final _overlayController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksCubit()..loadTasks(widget.userEmail),
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<TasksCubit, TasksState>(
              listenWhen: (previous, current) =>
                  !previous.isTaskAdding && current.isTaskAdding,
              listener: (context, state) => _overlayController.show(),
            ),
            BlocListener<TasksCubit, TasksState>(
              listenWhen: (previous, current) =>
                  previous.isTaskAdding && !current.isTaskAdding,
              listener: (context, state) => _overlayController.hide(),
            ),
          ],
          child: Scaffold(
            backgroundColor: Colors.lightBlueAccent,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              onPressed: () => _addTask(context.read<TasksCubit>()),
              child: const Icon(Icons.add),
            ),
            body: OverlayPortal(
              overlayChildBuilder: (context) => ColoredBox(
                color: Colors.black.withOpacity(0.5),
                child: const AddTaskDialog(),
              ),
              controller: _overlayController,
              child: BlocBuilder<TasksCubit, TasksState>(
                buildWhen: (previous, current) =>
                    current.tasks != previous.tasks,
                builder: (_, state) {
                  final tasks = state.tasks;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(
                          top: 60.0,
                          left: 30.0,
                          right: 30.0,
                          bottom: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              child: Icon(
                                Icons.list,
                                color: Colors.lightBlueAccent,
                                size: 30.0,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text('Todoey', style: TextStyles.title),
                            Text(
                              '${state.tasks.length} tasks',
                              style: TextStyles.subtitle,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 300.0,
                          decoration: Decorations.taskField,
                          child: ListView.builder(
                            itemCount: tasks.length,
                            itemBuilder: (context, index) {
                              final task = tasks[index];
                              return DeletingTaskWidget(
                                title: task.title,
                                onDismissed: () => context
                                    .read<TasksCubit>()
                                    .removeTask(index),
                                checkBox: CheckboxListTile(
                                  title: RichText(
                                    text: TextSpan(
                                      text: task.title,
                                      style: task.isCompleted
                                          ? TextStyles.completedTask
                                          : TextStyles.text,
                                    ),
                                  ),
                                  value: task.isCompleted,
                                  onChanged: (bool? newValue) {
                                    if (newValue == null) return;
                                    context.read<TasksCubit>().updateTask(
                                          task: TodoTask(
                                            title: task.title,
                                            isCompleted: newValue,
                                            id: task.id,
                                          ),
                                          index: index,
                                        );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      }),
    );
  }

  void _addTask(TasksCubit tasksCubit) {
    tasksCubit.taskAddRequested();
  }
}
