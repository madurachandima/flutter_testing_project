import 'package:flutter/material.dart';
import 'package:flutter_testing_project/login.dart';
import 'package:flutter_testing_project/register.dart';

class MiddleScreren extends StatelessWidget {
  const MiddleScreren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              key: const Key('goRegisterButtonKey'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );
              },
              child: const Text("Register")),
          ElevatedButton(
              key: const Key('goLoginButtonKey'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text("Login"))
        ],
      ),
    )));
  }
}
