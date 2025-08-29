import 'package:flutter/material.dart';

class loadingTarea extends StatelessWidget {
  const loadingTarea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      margin: EdgeInsets.all(7),
      height: 70.0,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 5),
          Text('Cargando ...', style: TextStyle( fontSize: 10, color: Colors.white))
        ],
      ),
    );
  }
}