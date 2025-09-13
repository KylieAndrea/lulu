part of 'login_bloc.dart';

@immutable
sealed class LoginState {
  const LoginState();

  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

class LoginLoading extends LoginState{}

class LoginSuccess extends LoginState{
  final String cc;
  final String nombre;
  const LoginSuccess(this.nombre, this.cc);

  @override
  List<Object> get props => [nombre, cc];
}

class LoginFailed extends LoginState{}
