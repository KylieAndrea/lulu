import 'package:flutter/material.dart';
import 'package:listener_prueba/model/info.dart';

// ignore: camel_case_types
class successInfo extends StatelessWidget {
  const successInfo({
    super.key, required this.info,
  });

  final Info info;

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
          mainAxisAlignment: MainAxisAlignment.center,
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
                  Text(info.id ?? '' ),
                  Text(info.name ?? '' ),
                  Text(info.username ?? ''),
                  Text(info.email ?? '' )
                ],
            ),
          ],
        ),
      )
    );
  }
}
