part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

// add event for login pressed
final class LoginPressed extends LoginEvent {
  // identifier for login
  final String identifier;
  // password for login
  final String password;
  LoginPressed(this.identifier, this.password);
}
