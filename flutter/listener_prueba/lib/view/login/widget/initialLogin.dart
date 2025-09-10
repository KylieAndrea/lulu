
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listener_prueba/pages/home.dart';

class initialLogin extends StatelessWidget {
  const initialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.supervisor_account_rounded, size: 60, color: const Color.fromARGB(255, 174, 208, 255),),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Cédula', style: TextStyle(color: const Color.fromARGB(255, 210, 210, 210)),),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                labelText: '',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 202, 202, 202), width: 1),
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 151, 189, 255), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Nombre', style: TextStyle(color: const Color.fromARGB(255, 210, 210, 210)),)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 202, 202, 202), width: 1),
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 151, 189, 255), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                child:
                  ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 174, 208, 255),
                      foregroundColor: const Color.fromARGB(255, 77, 151, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ), 
                    child: Text('Guardar'))
              ),
            )
          ],
        ),
      ),
    );
  }
}
