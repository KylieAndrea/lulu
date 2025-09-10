import 'package:flutter/material.dart';

class failedInfo extends StatelessWidget {
  const failedInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 214, 218, 228),
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
          children: [
            Icon(Icons.error, color: const Color.fromARGB(255, 122, 146, 159),),
            SizedBox(height: 10,),
            Text('Error al cargar la información.', 
              style: TextStyle(
                color: const Color.fromARGB(255, 122, 146, 159)
              ),
            )
          ],
        )
      )
    );
  }
}
