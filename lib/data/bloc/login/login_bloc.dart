import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
      // add event for login pressed
      if (event is LoginPressed) {
        // add state for login loading
        emit(LoginLoading());
        // add state for login sukses
        emit(LoginSuccess('Login Sukses'));
        // add state for login failed
        emit(LoginFailed('Login Gagal'));
      }
    });
  }
}
