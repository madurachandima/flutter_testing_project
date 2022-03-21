import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClickedShowButton = false;
  String? text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isClickedShowButton)
                Text(
                  text!,
                  key: const Key("showText"),
                ),
              ElevatedButton(
                  key: const Key('showHideTextButton'),
                  onPressed: () {
                    isClickedShowButton = !isClickedShowButton;
                    text = "Hello Flutter";
                    setState(() {});
                  },
                  child: const Text(
                    "Show Text",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
