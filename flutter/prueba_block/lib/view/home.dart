import 'package:flutter/material.dart';
import 'package:prueba_block/tareas/widget/initialTarea.dart';
import 'package:prueba_block/tareas/widget/successTarea.dart';
import 'package:prueba_block/tareas/widget/failedTarea.dart';
import 'package:prueba_block/tareas/widget/loadingTarea.dart';
import 'package:prueba_block/user/info/widget/initialUser.dart';
import 'package:prueba_block/user/info/widget/loadingUser.dart';
import 'package:prueba_block/user/info/widget/failedUser.dart';
import 'package:prueba_block/user/info/widget/successUser.dart';


class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          initialUser(),
          Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Tareas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 180, 180, 180),
                      ),
                    ),
                  ),
                ),
                initialTarea()
              ],
            ),
          )
        ],
      ),
    );
  }
}