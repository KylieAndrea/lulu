import 'package:flutter/material.dart';

class initialInfo extends StatelessWidget {
  const initialInfo({
    super.key, required this.nombre, required this.cc,
  });

  final String nombre;
  final String cc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 213, 226, 255),
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.all(30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: const Color.fromARGB(255, 69, 90, 149),
          fontFamily: 'roboto'
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // alinea arriba
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Id :'),
                Text('Name :'),
                Text('User name :'),
                Text('Email :')
              ],
            ),
            SizedBox(width: 40,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(''),
                  Text(''),
                  Text(''),
                  Text('')
                ],
              ),
          ],
        ),
      )
    );
  }
}
