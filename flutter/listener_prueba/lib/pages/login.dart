import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listener_prueba/view/login/bloc/login_bloc.dart';
import '../view/login/widget/initialLogin.dart';
import '../view/login/widget/failedLogin.dart';
import '../view/login/widget/loadingLogin.dart';
import 'home.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => Home(nombre: state.nombre, cc: state.cc))
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return loadingLogin();
            } else if (state is LoginInitial) {
              return initialLogin();
            } else if (state is LoginFailed) {
              return failedLogin();
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
