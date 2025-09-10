import 'package:flutter/material.dart';

class successInfo extends StatelessWidget {
  const successInfo({
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
                  Text('Mazda 2 Hatchback'),
                  Text('Rojo Soul Red'),
                  Text('peticion',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Text(
                    'El Mazda 2 Hatchback 2023 combina diseño elegante, eficiencia y tecnología Skyactiv. '
                    'Su color Rojo Soul Red resalta en cualquier camino, ofreciendo estilo y dinamismo.',
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
