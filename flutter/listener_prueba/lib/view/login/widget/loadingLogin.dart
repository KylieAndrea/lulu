import 'package:flutter/material.dart';

class loadingLogin extends StatelessWidget {
  const loadingLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 189, 213, 255),
            child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: const Color.fromARGB(255, 135, 193, 255),
                  ),
                  SizedBox(height: 10,),
                  Text('Cargando..', style: TextStyle(color: Colors.white),)
                ],
              )
          ),
    );
  }
}
