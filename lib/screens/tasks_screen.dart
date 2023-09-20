import 'package:flutter/material.dart';
import 'package:todoey_app/service/add_task.dart';
import 'package:todoey_app/styles/decorations.dart';
import 'package:todoey_app/styles/text_styles.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({
    super.key,
  });

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<String> tasks = [];
  final List<bool> taskCompleted = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          _addTask();
        },
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
                  return CheckboxListTile(
                    title: Text(
                      tasks[index],
                    ),
                    value: taskCompleted[index],
                    onChanged: (bool? newValue) {
                      setState(() {
                        taskCompleted[index] = newValue!;
                      });
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addTask() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddTask(
          onTaskAdded: (newTaskText) {
            setState(() {
              tasks.add(newTaskText);
              taskCompleted.add(false);
            });
          },
        );
      },
    );
  }
}