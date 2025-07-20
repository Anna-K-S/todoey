import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoey_app/data/todo_task.dart';
import 'package:todoey_app/service/tasks_service.dart';

part 'tasks_cubit.freezed.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(const TasksState.content(tasks: []));

  void taskAddRequested() => emit(TasksState.taskAdding(tasks: state.tasks));

  // метод для добавления задачи
  void addTask(String task) {
    final newTask = TodoTask(
      title: task,
      isCompleted: false,
      id: '',
    );

    emit(TasksState.content(tasks: [...state.tasks, newTask]));
  }

  // метод для удаления задачи
  void removeTask(int index) {
    emit(
      state.copyWith(
        tasks: state.tasks
            .where((element) => element != state.tasks[index])
            .toList(),
      ),
    );
  }

  Future<void> loadTasks(String email) async {
    emit(TasksState.loading(tasks: state.tasks, email: email));

    try {
      final tasks = await TasksService.instance
          .loadTasks(email); // загрузка задач из базы данных по email
      emit(
        TasksState.content(
          tasks: [...state.tasks, ...tasks],
        ),
      ); // обновление состояния Cubit с загруженными задачами
    } catch (e) {
      emit(TasksState.error(tasks: state.tasks, text: 'loh'));
    }
  }

  Future<void> updateTask({required TodoTask task, required int index}) async{
    final previousTasks = state.tasks;

    final updTask = List<TodoTask>.from(state.tasks);
    updTask[index] = task;

    emit(
      state.copyWith(tasks: updTask),
    );

    try {
      TasksService.instance.updateTaskStatus(task.id, task.isCompleted);
    } catch (e) {
      emit(TasksState.content(tasks: previousTasks));
    }
  }
}

@freezed
class TasksState with _$TasksState {
  const TasksState._();

  bool get isTaskAdding => this is _TaskAdding;

  bool get isContent => this is _Content;

  const factory TasksState.content({
    required List<TodoTask> tasks,
  }) = _Content;

  const factory TasksState.error({
    required List<TodoTask> tasks,
    required String? text,
  }) = _Error;

  const factory TasksState.loading({
    required List<TodoTask> tasks,
    required String email,
  }) = _Loading;

  const factory TasksState.taskAdding({
    required List<TodoTask> tasks,
  }) = _TaskAdding;
}
