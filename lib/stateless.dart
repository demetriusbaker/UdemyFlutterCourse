import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateless Widget",
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(50.0),
          ),
        ),
      ),
    );
  }
}