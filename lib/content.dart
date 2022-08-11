import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 400,
          width: 400,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          transform: Matrix4.rotationZ(0.5),
          decoration: const BoxDecoration(color: Colors.green),
          child: const Text("Container", textAlign: TextAlign.right,),
        ),
      ),
    );
  }
}
