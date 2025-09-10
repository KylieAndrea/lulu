import 'package:flutter/material.dart';
import '../view/info/widget/initialInfo.dart';
import '../view/info/widget/successInfo.dart';
import '../view/info/widget/failedInfo.dart';
import '../view/info/widget/loadingInfo.dart';

void main() {
  runApp( Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/car.png',
              width: 350,
              fit: BoxFit.cover,
            ),
            
            initialInfo()
          ],
        ),
      ),
    );
  }
}
