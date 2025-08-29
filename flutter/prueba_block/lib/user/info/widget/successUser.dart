import 'package:flutter/material.dart';

class successUser extends StatelessWidget {
  const successUser({
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
            Text('¡Hola Carlos!',
              style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contacto:  ', 
                  style: TextStyle(fontWeight: FontWeight.bold, 
                  color: Colors.white),
                ),
                Text('usuario@gmail.com',
                  style: TextStyle(color:Colors.white)
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Saldo:  ', 
                  style: TextStyle(fontWeight: FontWeight.bold, 
                  color: Colors.white),
                ),
                Text('\$ 1.300.000',
                  style: TextStyle(color:Colors.white)
                )
              ]
            )
           ],
        ),
      )
    );
  }
}