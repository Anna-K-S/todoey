// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authorized,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authorized,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
          _$AuthorizedImpl value, $Res Function(_$AuthorizedImpl) then) =
      __$$AuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
      _$AuthorizedImpl _value, $Res Function(_$AuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthorizedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthorizedImpl implements _Authorized {
  const _$AuthorizedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      __$$AuthorizedImplCopyWithImpl<_$AuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authorized,
    required TResult Function() unauthorized,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements AuthState {
  const factory _Authorized({required final User user}) = _$AuthorizedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authorized,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements AuthState {
  const factory _Unauthorized() = _$UnauthorizedImpl;
}
