part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

// add state for login sukses
final class LoginSuccess extends LoginState {
  // massege for login sukses
  final String message;
  LoginSuccess(this.message);
}

// add state for login failed
final class LoginFailed extends LoginState {
  // massege for login failed
  final String message;
  LoginFailed(this.message);
}

// add state for login loading
final class LoginLoading extends LoginState {}
