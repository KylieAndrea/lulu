import 'package:flutter/material.dart';

class loadingInfo extends StatelessWidget {
  const loadingInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 189, 213, 255),
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.all(30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: const Color.fromARGB(255, 69, 90, 149),
          fontFamily: 'roboto'
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 135, 193, 255),
            ),
            SizedBox(height: 10,),
            Text('Cargando..', style: TextStyle(color: Colors.white),)
          ],
        )
      )
    );
  }
}
