import 'package:flutter/material.dart';
import 'package:flutter_testing_project/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passowrdController = TextEditingController();
    _login() {
      if (_usernameController.text != "" && _passowrdController.text != "") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      } else {
        debugPrint("Error login");
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
              key: const Key('loginUsernameText'),
              controller: _usernameController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              key: const Key('loginPasswordText'),
              controller: _passowrdController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                key: const Key('clickLoginButton'),
                onPressed: () => _login(),
                child: const Text("Login")),
          ],
        ),
      )),
    );
  }
}
