<<<<<<< HEAD
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_task.freezed.dart';

@freezed
class TodoTask with _$TodoTask {
  const factory TodoTask({
    required String title,
    required bool isCompleted,
    required String id,
  }) = _TodoTask;
=======
class TodoTask {
  final String title;
  final bool isCompleted;

  TodoTask({
    required this.title,
    required this.isCompleted,
  });

}

>>>>>>> main
}
