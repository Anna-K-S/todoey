import 'package:cloud_firestore/cloud_firestore.dart';

class TasksService {
  TasksService._();

  static TasksService? _instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  factory TasksService() => _instance ??= TasksService._();

  Future<void> add(String email, String tasks) => _firestore
          .collection(
        'tasks',
      )
          .add({
        'email': email,
        'tasks': tasks,
      });
}
