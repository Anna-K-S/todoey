import 'package:flutter/material.dart';
import 'package:todoey_app/data/todo_task.dart';
import 'package:todoey_app/service/add_task.dart';
import 'package:todoey_app/styles/decorations.dart';
import 'package:todoey_app/styles/text_styles.dart';
import 'package:todoey_app/widgets/deleting_task.dart';

class TasksScreen extends StatefulWidget {
  static const path = '/tasks';

  const TasksScreen({
    super.key,
  });

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  //список для хранения задач
  final List<TodoTask> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: _addTask,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Column(
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
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyles.title,
                ),
                Text(
                  '${tasks.length} tasks',
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
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  final task = tasks[index];
                  return DeletingTaskWidget(
                    title: task.title,
                    onDismissed: () {
                      setState(() {
                        tasks.removeAt(index);
                      });
                    },
                    checkBox: CheckboxListTile(
                      title: Text(
                        tasks[index].title,
                      ),
                      value: tasks[index].isCompleted,
                      onChanged: (bool? newValue) {
                        if (newValue == null) return;
                        setState(() {
                          tasks[index] = TodoTask(
                            title: tasks[index].title,
                            isCompleted: newValue,
                          );
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

//вызов диалогового окна для добавления новой задачи
  void _addTask() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddTaskDialog(
          onTaskAdded: (newTaskText) {
            setState(() {
              tasks.add(
                TodoTask(
                  title: newTaskText,
                  isCompleted: false,
                ),
              );
            });
          },
        );
      },
    );
  }
}
