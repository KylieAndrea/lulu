part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {
  const LoginEvent();

  List<Object> get props => [];
}

class CreateUser extends LoginEvent{
  final String cc;
  final String nombre;
  const CreateUser({required this.nombre, required this.cc});

  @override
  List<Object> get props => [nombre, cc];
}

class falloEvento extends LoginEvent{}

class RetryEvento extends LoginEvent{}