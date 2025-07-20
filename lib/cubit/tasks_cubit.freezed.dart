// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksState {
  List<TodoTask> get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoTask> tasks) content,
    required TResult Function(List<TodoTask> tasks, String? text) error,
    required TResult Function(List<TodoTask> tasks, String email) loading,
    required TResult Function(List<TodoTask> tasks) taskAdding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoTask> tasks)? content,
    TResult? Function(List<TodoTask> tasks, String? text)? error,
    TResult? Function(List<TodoTask> tasks, String email)? loading,
    TResult? Function(List<TodoTask> tasks)? taskAdding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoTask> tasks)? content,
    TResult Function(List<TodoTask> tasks, String? text)? error,
    TResult Function(List<TodoTask> tasks, String email)? loading,
    TResult Function(List<TodoTask> tasks)? taskAdding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAdding value) taskAdding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAdding value)? taskAdding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAdding value)? taskAdding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({List<TodoTask> tasks});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoTask> tasks});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$ContentImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
    ));
  }
}

/// @nodoc

class _$ContentImpl extends _Content {
  const _$ContentImpl({required final List<TodoTask> tasks})
      : _tasks = tasks,
        super._();

  final List<TodoTask> _tasks;
  @override
  List<TodoTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksState.content(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoTask> tasks) content,
    required TResult Function(List<TodoTask> tasks, String? text) error,
    required TResult Function(List<TodoTask> tasks, String email) loading,
    required TResult Function(List<TodoTask> tasks) taskAdding,
  }) {
    return content(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoTask> tasks)? content,
    TResult? Function(List<TodoTask> tasks, String? text)? error,
    TResult? Function(List<TodoTask> tasks, String email)? loading,
    TResult? Function(List<TodoTask> tasks)? taskAdding,
  }) {
    return content?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoTask> tasks)? content,
    TResult Function(List<TodoTask> tasks, String? text)? error,
    TResult Function(List<TodoTask> tasks, String email)? loading,
    TResult Function(List<TodoTask> tasks)? taskAdding,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAdding value) taskAdding,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAdding value)? taskAdding,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAdding value)? taskAdding,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content extends TasksState {
  const factory _Content({required final List<TodoTask> tasks}) = _$ContentImpl;
  const _Content._() : super._();

  @override
  List<TodoTask> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoTask> tasks, String? text});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? text = freezed,
  }) {
    return _then(_$ErrorImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required final List<TodoTask> tasks, required this.text})
      : _tasks = tasks,
        super._();

  final List<TodoTask> _tasks;
  @override
  List<TodoTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final String? text;

  @override
  String toString() {
    return 'TasksState.error(tasks: $tasks, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoTask> tasks) content,
    required TResult Function(List<TodoTask> tasks, String? text) error,
    required TResult Function(List<TodoTask> tasks, String email) loading,
    required TResult Function(List<TodoTask> tasks) taskAdding,
  }) {
    return error(tasks, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoTask> tasks)? content,
    TResult? Function(List<TodoTask> tasks, String? text)? error,
    TResult? Function(List<TodoTask> tasks, String email)? loading,
    TResult? Function(List<TodoTask> tasks)? taskAdding,
  }) {
    return error?.call(tasks, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoTask> tasks)? content,
    TResult Function(List<TodoTask> tasks, String? text)? error,
    TResult Function(List<TodoTask> tasks, String email)? loading,
    TResult Function(List<TodoTask> tasks)? taskAdding,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(tasks, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAdding value) taskAdding,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAdding value)? taskAdding,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAdding value)? taskAdding,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends TasksState {
  const factory _Error(
      {required final List<TodoTask> tasks,
      required final String? text}) = _$ErrorImpl;
  const _Error._() : super._();

  @override
  List<TodoTask> get tasks;
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoTask> tasks, String email});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? email = null,
  }) {
    return _then(_$LoadingImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl(
      {required final List<TodoTask> tasks, required this.email})
      : _tasks = tasks,
        super._();

  final List<TodoTask> _tasks;
  @override
  List<TodoTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final String email;

  @override
  String toString() {
    return 'TasksState.loading(tasks: $tasks, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoTask> tasks) content,
    required TResult Function(List<TodoTask> tasks, String? text) error,
    required TResult Function(List<TodoTask> tasks, String email) loading,
    required TResult Function(List<TodoTask> tasks) taskAdding,
  }) {
    return loading(tasks, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoTask> tasks)? content,
    TResult? Function(List<TodoTask> tasks, String? text)? error,
    TResult? Function(List<TodoTask> tasks, String email)? loading,
    TResult? Function(List<TodoTask> tasks)? taskAdding,
  }) {
    return loading?.call(tasks, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoTask> tasks)? content,
    TResult Function(List<TodoTask> tasks, String? text)? error,
    TResult Function(List<TodoTask> tasks, String email)? loading,
    TResult Function(List<TodoTask> tasks)? taskAdding,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tasks, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAdding value) taskAdding,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAdding value)? taskAdding,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAdding value)? taskAdding,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends TasksState {
  const factory _Loading(
      {required final List<TodoTask> tasks,
      required final String email}) = _$LoadingImpl;
  const _Loading._() : super._();

  @override
  List<TodoTask> get tasks;
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskAddingImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TaskAddingImplCopyWith(
          _$TaskAddingImpl value, $Res Function(_$TaskAddingImpl) then) =
      __$$TaskAddingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoTask> tasks});
}

/// @nodoc
class __$$TaskAddingImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TaskAddingImpl>
    implements _$$TaskAddingImplCopyWith<$Res> {
  __$$TaskAddingImplCopyWithImpl(
      _$TaskAddingImpl _value, $Res Function(_$TaskAddingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskAddingImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
    ));
  }
}

/// @nodoc

class _$TaskAddingImpl extends _TaskAdding {
  const _$TaskAddingImpl({required final List<TodoTask> tasks})
      : _tasks = tasks,
        super._();

  final List<TodoTask> _tasks;
  @override
  List<TodoTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksState.taskAdding(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskAddingImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskAddingImplCopyWith<_$TaskAddingImpl> get copyWith =>
      __$$TaskAddingImplCopyWithImpl<_$TaskAddingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoTask> tasks) content,
    required TResult Function(List<TodoTask> tasks, String? text) error,
    required TResult Function(List<TodoTask> tasks, String email) loading,
    required TResult Function(List<TodoTask> tasks) taskAdding,
  }) {
    return taskAdding(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoTask> tasks)? content,
    TResult? Function(List<TodoTask> tasks, String? text)? error,
    TResult? Function(List<TodoTask> tasks, String email)? loading,
    TResult? Function(List<TodoTask> tasks)? taskAdding,
  }) {
    return taskAdding?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoTask> tasks)? content,
    TResult Function(List<TodoTask> tasks, String? text)? error,
    TResult Function(List<TodoTask> tasks, String email)? loading,
    TResult Function(List<TodoTask> tasks)? taskAdding,
    required TResult orElse(),
  }) {
    if (taskAdding != null) {
      return taskAdding(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAdding value) taskAdding,
  }) {
    return taskAdding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAdding value)? taskAdding,
  }) {
    return taskAdding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAdding value)? taskAdding,
    required TResult orElse(),
  }) {
    if (taskAdding != null) {
      return taskAdding(this);
    }
    return orElse();
  }
}

abstract class _TaskAdding extends TasksState {
  const factory _TaskAdding({required final List<TodoTask> tasks}) =
      _$TaskAddingImpl;
  const _TaskAdding._() : super._();

  @override
  List<TodoTask> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TaskAddingImplCopyWith<_$TaskAddingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
