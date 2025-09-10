
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listener_prueba/view/login/bloc/login_bloc.dart';

class initialLogin extends StatelessWidget {
  initialLogin({
    super.key,
  });

  final TextEditingController nombrecontroller = TextEditingController();
  final TextEditingController cccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.supervisor_account_rounded, size: 60, color: const Color.fromARGB(255, 174, 208, 255),),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Cédula', style: TextStyle(color: const Color.fromARGB(255, 210, 210, 210)),),
              ),
            ),
            TextField(
              controller: cccontroller,
              maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                labelText: '',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 202, 202, 202), width: 1),
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 151, 189, 255), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Nombre', style: TextStyle(color: const Color.fromARGB(255, 210, 210, 210)),)
              ),
            ),
            TextField(
              controller: nombrecontroller,
              decoration: InputDecoration(
                labelText: '',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 202, 202, 202), width: 1),
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 151, 189, 255), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                child:
                  ElevatedButton(
                    onPressed: () {
                      final nombre = nombrecontroller.text.trim();
                      final cc = cccontroller.text.trim();

                      if (nombre.isEmpty || cc.isEmpty){
                        context.read<LoginBloc>().add(falloEvento());
                        return;
                      }
                      if (cc.length < 8){
                        context.read<LoginBloc>().add(falloEvento());
                        return;
                      }

                      context.read<LoginBloc>().add(CreateUser(nombre: nombre, cc: cc));
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 174, 208, 255),
                      foregroundColor: const Color.fromARGB(255, 77, 151, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ), 
                    child: Text('Guardar'))
              ),
            )
          ],
        ),
      ),
    );
  }
}
