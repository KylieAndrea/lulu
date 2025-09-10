import 'package:flutter/material.dart';
import '../view/login/widget/initialLogin.dart';
import '../view/login/widget/failedLogin.dart';
import '../view/login/widget/loadingLogin.dart';


class login extends StatelessWidget {
  const login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initialLogin(),
    );
  }
}
