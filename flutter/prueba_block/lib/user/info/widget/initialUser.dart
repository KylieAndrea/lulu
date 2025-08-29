import 'package:flutter/material.dart';

class initialUser extends StatelessWidget {
  const initialUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200.0,
      margin:  EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text('¡Bienvenido!',
              style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
            )
           ],
        ),
      )
    );
  }
}