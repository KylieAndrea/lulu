import 'package:flutter/material.dart';

class failedUser extends StatelessWidget {
  const failedUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 194, 194, 194),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200.0,
      margin:  EdgeInsets.all(20),
      child: Center(
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
      )
    );
  }
}