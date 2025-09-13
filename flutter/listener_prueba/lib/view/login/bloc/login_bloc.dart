import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      emit(LoginInitial());
    });

    on<CreateUser>((event, emit) async{
      emit(LoginLoading()); 

      await Future.delayed(Duration(seconds: 2));

      emit(LoginSuccess(
        event.nombre, event.cc
      ));

    });

     on<falloEvento>((event, emit) {
      emit(LoginFailed());
    });     
    on<RetryEvento>((event, emit) {
      emit(LoginInitial());
    });
  }
}
