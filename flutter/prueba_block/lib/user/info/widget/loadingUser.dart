import 'package:flutter/material.dart';

class loadingUser extends StatelessWidget {
  const loadingUser({
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
            CircularProgressIndicator(),
            SizedBox(height: 5),
            Text('Cargando ...', style: TextStyle( fontSize: 10, color: Colors.white))
           ],
        ),
      )
    );
  }
}