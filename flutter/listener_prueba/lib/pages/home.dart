import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listener_prueba/view/info/bloc/info_bloc.dart';
import '../view/info/widget/initialInfo.dart';
import '../view/info/widget/successInfo.dart';
import '../view/info/widget/failedInfo.dart';
import '../view/info/widget/loadingInfo.dart';

class Home extends StatelessWidget {
  final String nombre;
  final String cc;

  const Home({super.key, required this.nombre, required this.cc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoBloc()..add(GetInfo()),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/car.png', width: 350, fit: BoxFit.cover),

            BlocBuilder<InfoBloc, InfoState>(
              builder: (context, state) {
                if (state is InfoInitial) {
                  return initialInfo(nombre: nombre, cc: cc);
                } else if (state is InfoLoading) {
                  return loadingInfo();
                } else if (state is InfoSuccess) {
                  return successInfo(info: state.info,);
                } else if (state is InfoFailed) {
                  return failedInfo();
                } else {
                  return SizedBox.shrink();
                }
              },
            ),

            SizedBox(height: 20,),
            Text('Bienvenido $nombre con n°Documento $cc')
          ],
        ),
      ),
    );
  }
}
