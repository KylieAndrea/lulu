import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

class failedLogin extends StatelessWidget {
  const failedLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 250,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 208, 208),
              borderRadius: BorderRadius.circular(10),
            ),
            child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.highlight_off_rounded, color: const Color.fromARGB(255, 255, 138, 138), size: 35,),
                  Text('Ha ocurrido un error', style: TextStyle(color: const Color.fromARGB(255, 255, 138, 138),)),
                ],
              ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            context.read<LoginBloc>().add(RetryEvento());
          }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 174, 208, 255),
              foregroundColor: const Color.fromARGB(255, 77, 151, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ), 
            child: Text('Volver'))
        ],
      )
    );
  }
}
