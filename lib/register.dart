import 'package:flutter/material.dart';
import 'package:flutter_testing_project/login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passowrdController = TextEditingController();

    _regisisterUser() {
      if (_passowrdController.text != "" && _usernameController.text != "") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      } else {
        debugPrint("Error");
      }
    }

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              key: const Key('registerUsernameText'),
              controller: _usernameController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              key: const Key('registerPasswordText'),
              controller: _passowrdController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                key: const Key('clickRegisterButton'),
                onPressed: () => _regisisterUser(),
                child: const Text("Register")),
          ],
        ),
      )),
    );
  }
}
