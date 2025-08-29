import 'package:flutter/material.dart';

class failedTarea extends StatelessWidget {
  const failedTarea({
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
          Icon(
            Icons.error,
            color: const Color.fromARGB(255, 160, 160, 160),
            size: 48,
          ),
          Text('Ha ocurrido un error!', style: TextStyle(color:Colors.grey, fontSize: 10))
        ],
      ),
    );
  }
}