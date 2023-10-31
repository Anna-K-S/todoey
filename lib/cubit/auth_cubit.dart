import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoey_app/data/user.dart';
import 'package:todoey_app/service/auth_service.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService _authService;
  AuthCubit({
    required AuthService authService,
  })  : _authService = authService,
        super(const AuthState.unauthorized());

  Future<void> authorize(
      {required String email, required String password}) async {
    final user = await _authService.singIn(email, password);
    emit(AuthState.authorized(user: user));
  }

  Future<void> register(
      {required String email, required String password}) async {
    final user = await _authService.registration(email, password);
    emit(AuthState.authorized(user: user));
  }

  Future<void> signOut(
      {required String email, required String password}) async {
    await _authService.singOut();
    emit(const AuthState.unauthorized());
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authorized({
    required User user,
  }) = _Authorized;

  const factory AuthState.unauthorized() = _Unauthorized;
  
}
