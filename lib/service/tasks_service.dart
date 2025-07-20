import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoey_app/data/todo_task.dart';

class TasksService {
  TasksService._();

  static TasksService? _instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static TasksService get instance => _instance ??= TasksService._();

  Future<void> add(String email, String title) => _firestore
          .collection(
        'tasks',
      )
          .add({
        'email': email,
        'tasks': title,
        'isCompleted': false,
      });

  Future<List<TodoTask>> loadTasks(String email) async {
    final querySnapshot = await _firestore
        .collection('tasks')
        .where('email', isEqualTo: email)
        .get();
    final tasks = querySnapshot.docs.map((doc) {
      final data = doc.data();
      return TodoTask(
        title: data['tasks']!,
        isCompleted: data['isCompleted']!,
        id: doc.id,
      );
    }).toList();
    return tasks;
  }

  Future<void> updateTaskStatus(String id, bool isCompleted)   {
     return _firestore
        .collection('tasks')
        .doc(id)
        .update({'isCompleted': isCompleted});
  }
}




