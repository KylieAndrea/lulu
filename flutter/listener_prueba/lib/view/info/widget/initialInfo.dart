import 'package:flutter/material.dart';

class initialInfo extends StatelessWidget {
  const initialInfo({
    super.key,
  });

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
                Text('Modelo'),
                Text('Color'),
                Text('Dueño'),
                Text('Descripcion')
              ],
            ),
            SizedBox(width: 40,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Campo vacio'),
                  Text('Campo vacio'),
                  Text('Campo vacio',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Text(
                    'Campo vacio',
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
