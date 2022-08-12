import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  String text;

  AnotherPage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
