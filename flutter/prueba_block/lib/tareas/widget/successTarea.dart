import 'package:flutter/material.dart';

class successTarea extends StatelessWidget {
  const successTarea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(7),
            height: 70.0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Compra:', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Ir al Ara', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue[300],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(7),
            height: 70.0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Transito:', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Tramite', style: TextStyle(color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}